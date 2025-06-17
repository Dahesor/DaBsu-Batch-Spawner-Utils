# 大别墅，对话框批量刷怪笼管理工具 (DaBsu)

## 简介

**大别墅** 是一个基于新版本dialog的刷怪笼编辑工具，适用于Minecraft Java 1.21.6+。它为地图制作者提供了方便直观的方式来管理大量刷怪笼。通过“大别墅”的快速编辑功能，用户可以轻松地修改单个刷怪笼或所有相同配置的刷怪笼；通过批量编辑功能，用户可以使用多种筛选方式选中多个刷怪笼并一起编辑它们。

## 多语言支持

大别墅支持多语言。玩家首次进入服务器时，数据包会提示选择语言（目前支持英文和简体中文），也可以通过运行命令 `function dabsu:lang` 来修改语言设置。玩家进入时默认英文。所您想要所有新进入服务器的玩家默认使用简体中文，输入`scoreboard players set $default lang.dabsu 1`

## 获取DaBsu操作杖

大别墅的大多数功能都通过**DaBsu操作杖**来使用。你可以使用以下任意命令获得操作杖：

```mcfunction
function #dabsu:a
function dabsu:a
function dabsu:wand
```
如果你安装的是“With Quick Actions”的版本，也可以按下 `G` 键打开快速对话菜单，选择“获取大别墅调试棒”。

- 手持操作杖并**潜行 + 右键**：打开**大别墅主菜单**
- 手持操作杖对准刷怪笼显示该刷怪笼的详细信息
- 丢弃操作杖：**潜行 + Q**

## 功能总览

以下是“大别墅”提供的所有主要功能。每项功能的具体使用方法请参考对应章节。

- 快速编辑
  - 世界内可视化编辑
  - 对话框属性编辑
  - 对话框编辑`SpawnPotentials`
  - 快速修改实体属性与装备
  - 同步对`SpawnPotentials`的修改到其他拥有相同`SpawnPotentials`的刷怪笼
- 扫描并注册已存在的刷怪笼
- 批量编辑
  - 选择刷怪笼（立方体选择，范围选择，nbt=选择，相同`SpawnPotentials`选择，全选，修改选择集（添加，删除，取重叠部分））
  - 批量修改（设定下次生成时间，变更或调整属性，管理`SpawnPotentials`，执行任意命令）
- 偏好设置
- 使大别墅休眠并卸载
- 试炼刷怪笼转换器
- 服务器末影箱
- 生成分析器


## 快速编辑

快速编辑允许你便捷地，可视化地更改一个指定的刷怪笼。你可以选择将更改发布至所有带有相同`SpawnPotentials`的其他刷怪笼。\
**潜行并右键点击一个刷怪笼**以进入快速编辑状态.

### 可视化编辑

默认情况下，你会看到一个方形轮廓线表示该刷怪笼的`SpawnRange`，一个球形轮廓代表其`RequiredPlayerRange`，和一个位于刷怪笼上方的柱子代表其`SpawnCount`。

每个轮廓上都有至少一个绿色的小正方体节点。**按住右键并拖动这些节点**以可视化地调整对应的属性。

### 对话框编辑属性

快速编辑时，**手持操作杖按Q**可以打开**快速编辑面板**。\
在这里可以选择**调整属性**来编辑刷怪笼除`SpawnPotentials`外的各项设置，包括 `SpawnCount`、`SpawnRange`、`RequiredPlayerRange`、`Min/MaxSpawnDelay` 和 `MaxNearbyEntities`。\
可以**按 F**直接进入编辑属性页面。

点击**修改该刷怪笼**将使用你的输入修改被选择的单个刷怪笼，点击**修改所有相同生成刷怪笼**将修改所有具有完全相同`SpawnPotentials`的刷怪笼。

### 对话框管理生成项

快速编辑中，**按 Q**将打开**快速编辑面板**。
在这里，您可以选择**编辑生成数据** 来管理刷怪笼的 `SpawnPotentials`标签。

首先，你会看到**选择生成项**菜单，该页面按顺序列出刷怪笼的所有`SpawnPotentials`条目：
* 点击** [+] **按钮可向`SpawnPotentials`中追加新的生成项。
* **限制光照条件**可覆盖所有生成项的自定义光照规则。
* **合并到所有**可以将任意复合标签合并到`SpawnPotentials`列表中的每个条目中。
* **编辑完整NBT**可让使用者直接编辑整个`SpawnPotentials`标签。

你也可以**选择一个特定的项目以详细编辑它**。

这里同样有个快捷键**潜行 + F**。如果该刷怪笼只有一个生成项，那么这个快捷键会直接打开那个生成项的详情。如果它没有生成项或者有不止一个，那么该快捷键会打开选择生成项菜单。

当详细编辑项目时，你可以在输入框中随意编辑实体数据`data.entity`，装备战利品表数据`data.equipment`以及改项目的权重`weight`，点击**修改该刷怪笼**以确认更改。\

#### 快速编辑常见NBT

在**编辑常见NBT**选项中，你可以快速编辑一些常见的实体NBT，比如基础属性以及装备。\
想要编辑基础属性，直接键入数字；\
想要管理装备，你可以选择将实体身上的一件装备复制入自己的物品栏，或者使用自己物品栏或末影箱中的一个物品替换实体的一个槽位。

#### 同步SpawnPotentials更改

在快速编辑目标的`SpawnPotentials`被以任何手段更改后，你可以**按Q**打开**快速编辑面板**并看到它多出了**同步编辑**和**撤回更改**的选项。

**同步编辑**会将你对该刷怪笼`SpawnPotentials`的修改同步给在修改前所有拥有相同`SpawnPotentials`的刷怪笼。

**撤回更改**会取消所有对该刷怪笼`SpawnPotentials`的修改。

### 退出快速编辑

想要退出快速编辑，执行任意一下操作：
* 再次对着刷怪笼**潜行 + 右键**
* 拿着操作杖**潜行 + Q**
* 距离刷怪笼足够远
* 在**快速编辑面板**中点击**结束快速编辑**
* 离开服务器

## 注册刷怪笼

大别墅只能追踪和修改注册的刷怪笼。在大别墅安装后，所有玩家手动放置的刷怪笼都会自动注册。

想要注册之前已经存在的刷怪笼，或是非手动放置的刷怪笼，请在大别墅主菜单中选择**开始扫描与注册**。该功能打开时，每0.1秒大别墅就会扫描玩家视线周围的区域尝试寻找未注册的刷怪笼。

在此期间，拿着操作杖按`Q`可以设置扫描的范围以及是否可以穿透方块。

此外，拿着操作杖右键未注册的刷怪笼也会注册它。

## Batch Edit

Batch editing is a more advanced editing methods. You can select multiple spawners in highly comprehensive ways and edit them at the same time.

### Batch Edit Selecting Spawners

To select spawners for batch editing, open main menu by Sneak + Right Click with DaBsu wand, Then click **Batch Edit: Select Spawners**. If there are currently no selected spawners, pressing `Q` with the wand takes you here directly (if you are not in quick edit).

There are 5 different method of selection provided:
- **Cuboid Selection**

Define 2 corners and all registered spawners within the cuboid they form will be selected. It is the same logic as the `/fill` command. This works across unloaded chunks.

To define the 2 coordinates, you can either type them in the input box, click **Set Cuboid Pos 1/2** to set it to your current location, or click **Fast Cuboid Position** then right click with the wand to define 2 positions, kind of like WordEdit.

- **Range Selection**

Select all spawners within a given range from you. This is the only selection method that cannot select spawners in unloaded chunks.

To adjust the slidebar on the top of the page to change this range.

- **Select by nbt= check**

This is the same logic as the `nbt=` selector argument. You will be prompted to enter a compound tag, and the system will select all spawners that have at least one entity containing the tag you entered. For example. `{id:"minecraft:zombie"}` will select all spawners that spawn zombies. This selection works across dimensions and unloaded chunks.

- **Select Same Potential**

You must be standing on a spawner to use this one. Select all spawners that have the same `SpawnPotentials` as the spawner you are standing on. This selection works across dimensions and unloaded chunks.

- **Select All**

All registered spawners will be selected, works across dimensions and unloaded chunks.

- **Adding Selections**

On the top of the page there is a check box "Add to selection instead of replace". If checked, the new selected spawners will be added to the pre-existing selection instead of making a new selection.

### Batch Edit Modify Selection

You are allowed to modify your selection by removing some spawners from it or taking intersection with another selection, kind of like PhotoShop. To do that,  open main menu by Sneak + Right Click with DaBsu wand, Then click **Batch Edit: Modify Selection**.

Choose your mode to be either **Remove From Selection** or **Take Intersetion** with the button on the top, and everything else is the same as the Selecting Spawners page.

### Clear Selection

To Empty your selection, Click the **Batch Edit: Cancel Selection** button in the main menu.

### Batch Edit Selected Spawners

To Edit your selected spawners, Click the **Batch Edit Selected Spawners** button in the main menu. As long as you have at least one spawner selected, pressing Q while holding the wand will also take you here, as a shortcut.

There are 4 different ways you can modify these selected spawners:

- **Set Next Spawn Time**

This sets the `Delay` tag of the spawner to your input. (i.e., prime the spawners)

- **Edit Properties**

Set the properties of this spawners except `SpawnPotentials`. Leaving a box empty will not change the original value. Changing the mode to "**Add or Subtract**" will do math on the original value with your input instead of replacing them; this way you can make general adjustments like reduce all selected spawner's `SpawnCount` by 1.

- **Edit Potentials**

Manage the spawner's `SpawnPotentials`. Depending on what you selected, you will see different available functions.

If all spawners in your selection has the exact same `SpawnPotentials`, then you can freely go into and edit each entry just like Quick Edit. If not, you can only do very general edits like replacing all light rules or merge a tag into every single entry.

- **Run Any Command**

This allows you to run any command at the location of the spawner as its marker entity.

Note if you run commands that changed the spawner's properties or potentials, you have to run the §eSelf Check and Optimize§r function from the DaBsu main menu after the edit, so that all the changes you made are correctly updated in the DaBsu system.

## Custom Options

DaBsu provides users with a few options, split into 2 categories: **Global settings**, which affects the compatibility and performance of DaBsu, and **Personal Settings**, which are preferences only affecting yourself.

Both categories can be accessed through the DaBsu menu (Shift Right Click with DaBsu wand)

Users can also change their language in Personal Settings.

## Hibernating (Uninstalling)

If you are about to release your work into the public, you **must** hibernate DaBsu.

Do it by clicking the option in **Global settings** or running `function dabsu:hibernate`.

This removes all marker entities, scoreboards, and just about everything that DaBsu uses except storage files. After the data pack is hibernated, remove DaBsu from the datapacks folder so players cannot access it.

You can always resume DaBsu by putting it back into datapacks, `reload`, and run `function dabsu:resume`. All registered spawners will remain registered, provided that you did not remove DaBsu's storage file.

## Misc Functions

A few other "little" things added:

- **Server Ender Chest**

An (almost) infinite storage **shared** and **synced** in real time for all users.\
This is intended for devs to share commonly used items quickly.

- **Self Check and Optimize**

You can access this from the main menu. This forces all registered spawners to check if they have been changed and update their information in the DaBsu system. Normally spawners will only do this if they just got edited or a player is nearby.

- **Spawn Analyzer**

During quick edit you can choose to run a 5 seconds long spawn analysis that visually shows you where mobs can spawn with your current space, light, and special conditions. This works by forcing the spawner to spawn a special version of the same mob at high frequency and documenting where they spawns.

- **Trial Spawner**

DaBsu does not support trial spawners fully. Unless you have a really good reason, you should be using a **Trial Spawner Config File** in Datapack, which can easily manage spawn potentials of multiple trial spawners.

DaBsu comes with a converter that can convert a trial spawner's inline NBT configuration into an equivalent JSON structure that you can directly copy to a JSON config file in your data pack. To do that enter quick edit on a trial spawner and press `Q` with your wand.

## Technical Information

Performance: During idle, you should be able to ignore its performance cost.

With Quick Actions: In the releases, 2 different versions of DaBsu are provided. The one labled "With Quick Action" has a dialog defined with JSON and can be called from the pause menu or by pressing G. If this does not interference with your game then using this version could be more convenient.

Running `function dabsu:version` will tell you its current version. It also returns the numeric verions and set `storage dabsu:sys pong__` to `true`.