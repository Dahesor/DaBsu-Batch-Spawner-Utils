# DaBsu, Dialog Batch Spawner Utils

[简体中文](/readme/zh_cn.md)

## Introduction

**DaBsu** is a dialog based Spawner Editor for Minecraft Java 1.21.6+. It is designed for map makers to manage a large amount of spawners conveniently and visually.

## Language

DaBsu comes with support of multi-language. When a player joins the server for the first time, the data pack will ask them to select their language (currently supports `en` and `zh_cn`), or one may change their language by executing ``.

## Get a DaBsu Wand

Most functions of DaBsu is triggered with a **DaBsu Wand**. To obtain one, run **any** of the following commands:

```mcfunction
function #dabsu:a
function dabsu:a
function dabsu:wand
```
Alternativly, if you installed the "...With Fast Dialog" version, press `G` and open DaBsu's Quick Dialog Actions, then select `Obtain DaBsu Debug Stick`.

* Holding the wand and **Sneak + Right Click** will open **DaBsu Main Menu**.
* Holding the wand and looks at a spawner displays information of that spawner.
* To get rid of the wand, **Sneak + Q**.

## Features

Here is a list of all functionalities of DaBsu. To see detailed explanation please go to their corresponding chapter.

* Quick Edit
  * Visualized In-World Edit
  * Dialog Edit Properties
  * Dialog Edit `SpawnPotentials`
  * Quick Change entity's `attributes` and `Equipments` (More coming)
  * Sync `SpawnPotentials` changes to other spawners with the same `SpawnPotentials`
* Batch Edit
  * Select Spawners
    * Cuboid Selection
    * Range Selection
    * Same `SpawnPotentials` Selection
    * Check nbt= Selection
    * Select All
    * Modify Selection (Add/Remove/Take Intersection)
  * Edit Selected Spawners
    * Set Next Spawn Time
    * Replace/Adjust Properties
    * Manage `SpawnPotentials`
    * Run Any Command
* Scan & Register Pre-existed Spawners
* Trial Spawner Toner
* Server Ender Chest
* Configurable Settings
* Technical Information


## Quick Edit

Quick Edit allows you to edit an single spawner on the go. You may choose to publish your changes on SpawnPotentials to all other spawners with the same `SpawnPotentials`.\
To enter quick edit, **Sneak + Right Click on a spawner**.

### Visualized In-World Edit

By default you will see a box representing the spawner's `SpawnRange`, a sphere representing its `RequiredPlayerRange`, and a bar on top of the spawner representing its `SpawnCount`.

There are serveral little green cubes attached to these displays, and you may change the corresponding values by **holding down right click with the wand and dragging**.

### Dialog Edit Properties

During quick edit, **pressing Q** will open the **Quick Edit Menu** dialog window.\
From there, you may select **Edit Properties** to edit the spawner's settings except SpawnPotentials, including `SpawnCount`, `SpawnRange`, `RequiredPlayerRange`, `Min/MaxSpawnDelay`, and `MaxNearbyEntities`.\
**Pressing F** is a shortcut for getting to this page.

Clicking **Edit Itself** will modify this spawner with your input, and Clicking **Edit Same Potential** will modify all spawners with the exact same `SpawnPotentials` with your input.

### Dialog Edit SpawnPotentials

During quick edit, **pressing Q** will open the **Quick Edit Menu** dialog window.\
From there, you may select **Edit SpawnPotentials** to manage the spawner's `SpawnPotentials` entries.

You will first be taken to the **Select Potential** menu, which is a page that lists all of the spawner's `SpawnPotentials` entires in order:
 * Clicking the **[+]** button can append an new entry to `SpawnPotentials`.
 * **Light Limit...** changes the custom spawn rules for all entries
 * **Merge to all...** lets you merge any compound tag into every entry in the `SpawnPotentials` list
 * **Edit Full NBT** lets you directly edit the entire `SpawnPotentials` tag.

You may also **select an entry to edit that particular spawn**.\
A shurtcut exists as **Sneak + F**. If your spawner has only one spawn option, then it derectly takes you to that entry. If it has none or multiple entires, then it takes you to the **Select Potential** page.

When editing a particular entry, you may freely edit the Spawning Entity `data.entity`, the Equipment Loot Table `data.equipment` or the Weight `weight` of this entry. Click **Edit Itself** to apply your changes.\
You may also choose to **Delete** this entry or **Edit its Light Levels**.

#### Quick Change Common Tags

Inside the **Edit Common Tags** option, you may change common base **attributes** or **equipments** of the entity.\
To quickly change attributes, type the number;\
To manage equipments, you can choose to copy one of the mob's equipment into your inventory, or replace one of the slots with an item inside your inventory or enderchest.

#### Sync SpawnPotentials changes

After you made any changes through any means to the `SpawnPotentials` of the spawner being quick edited, you may **press Q** to open the **Quick Edit Menu** dialog window and see a promote for you to **Sync Changes** or **Revert Edits**

**Sync Changes** will sync your edits to this spawner to all other spawners that used to have the same `SpawnPotentials` with it.

**Revert Edits** will revert all your changes to the `SpawnPotentials` of this spawner.

### Quiting Quick Edit

To finish quick edit, do any of the following:
* **Sneak + Right Click** the spawner with the wand again
* **Sneak + Q** while hoding the wand
* Get far enough from the spawner, or the spawner's chunk is no longer loaded.
* Press the **Exit Quick Edit** button in the **Quick Edit Menu**
* Leave the server