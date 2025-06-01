import json

def escape_for_mcfunction(value: str) -> str:
    # 先将反斜杠转义（避免之后的替换破坏结构）
    value = value.replace('\\', '\\\\')
    # 替换换行符为字面量 \n
    value = value.replace('\n', '\\n')
    # 替换双引号
    value = value.replace('"', '\\"')
    return f'"{value}"'

def convert_json_to_mcfunction(json_path, output_path, lang):
    with open(json_path, 'r', encoding='utf-8') as f:
        data = json.load(f)

    lines = [f'data modify storage dabsu:run lang.{lang} merge value {{\\']
    keys = list(data.keys())
    for i, key in enumerate(keys):
        val = escape_for_mcfunction(data[key])
        comma = ',' if i < len(keys) - 1 else ''
        lines.append(f'    {key}:{val}{comma}\\')
    lines.append('}')

    with open(output_path, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))

# 示例用法
if __name__ == "__main__":
    convert_json_to_mcfunction('lang/en.json', 'data/dabsu/function/z_priq/lang/en.mcfunction', lang='en')
    convert_json_to_mcfunction('lang/zh.json', 'data/dabsu/function/z_priq/lang/zh_cn.mcfunction', lang='zh_cn')
