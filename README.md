# DaBsu, Dialog Batch Spawner Utils

[简体中文](/readme/zh_cn.md)

## Introduction

**DaBsu** is a dialog based Spawner Editor for Minecraft Java 1.21.6+. It is designed for map makers to manage a large amount of spawners conveniently and visually. DaBsu's quick edit allows users to conveniently modify a single spawner or a family of spawners, and DaBsu's batch edit allows you select multiple spawners in highly comprehensive ways and edit them together.

## Language

DaBsu comes with support of multi-language. When a player joins the server for the first time, the data pack will ask them to select their language (currently supports `en` and `zh_cn`), or one may change their language by executing `function dabsu:lang`.

## Get a DaBsu Wand

Most functions of DaBsu are triggered with a **DaBsu Wand**. To obtain one, run **any** of the following commands:

```mcfunction
function #dabsu:a
function dabsu:a
function dabsu:wand
```
Alternatively, if you installed the "...With Fast Dialog" version, press `G` and open DaBsu's Quick Dialog Actions, then select `Obtain DaBsu Debug Stick`.

* Holding the wand and **Sneak + Right Click** will open **DaBsu Main Menu**.
* Holding the wand and look at a spawner displays information of that spawner.
* To get rid of the wand, **Sneak + Q**.

## Features

Here is a list of all functionalities of DaBsu. To see detailed explanation please go to their corresponding chapter.

* Quick Edit
  * Visualized In-World Edit
  * Dialog Edit Properties
  * Dialog Edit `SpawnPotentials`
  * Quick Change entity's `attributes` and `Equipments` (More coming)
  * Sync `SpawnPotentials` changes to other spawners with the same `SpawnPotentials`
* Scan & Register Pre-existed Spawners
* Batch Edit
  * Select Spawners (Cuboid Selection | Range Selection | nbt= Selection | Same `SpawnPotentials` Selection|Select All | Modify Selection (Add/Remove/Take Intersection))
  * Edit Selected Spawners (Prime | Replace or Adjust Properties | Manage `SpawnPotentials` | Execute Any Command)
* Configurable Settings
* Hibernate and uninstall data pack
* Trial Spawner Toner
* Server Ender Chest
* Spawn Analyzer


## Quick Edit

Quick Edit allows you to edit an single spawner on the go. You may choose to publish your changes on SpawnPotentials to all other spawners with the same `SpawnPotentials`.\
To enter quick edit, **Sneak + Right Click on a spawner**.

### Visualized In-World Edit

By default you will see a box representing the spawner's `SpawnRange`, a sphere representing its `RequiredPlayerRange`, and a bar on top of the spawner representing its `SpawnCount`.

There are several little green cubes attached to these displays, and you may change the corresponding values by **holding down right click with the wand and dragging**.

### Dialog Edit Properties

During quick edit, **pressing Q** while hoding the wand will open the **Quick Edit Menu** dialog window.\
From there, you may select **Edit Properties** to edit the spawner's settings except SpawnPotentials, including `SpawnCount`, `SpawnRange`, `RequiredPlayerRange`, `Min/MaxSpawnDelay`, and `MaxNearbyEntities`.\
**Pressing F** is a shortcut for getting to this page.

Clicking **Edit Itself** will modify this spawner with your input, and Clicking **Edit Same Potential** will modify all spawners with the exact same `SpawnPotentials` with your input.

### Dialog Edit SpawnPotentials

During quick edit, **pressing Q** will open the **Quick Edit Menu** dialog window.\
From there, you may select **Edit SpawnPotentials** to manage the spawner's `SpawnPotentials` entries.

You will first be taken to the **Select Potential** menu, which is a page that lists all of the spawner's `SpawnPotentials` entries in order:
 * Clicking the **[+]** button can append an new entry to `SpawnPotentials`.
 * **Light Limit...** changes the custom spawn rules for all entries
 * **Merge to all...** lets you merge any compound tag into every entry in the `SpawnPotentials` list
 * **Edit Full NBT** lets you directly edit the entire `SpawnPotentials` tag.

You may also **select an entry to edit that particular spawn**.\
A shurtcut exists as **Sneak + F**. If your spawner has only one spawn option, then it derectly takes you to that entry. If it has none or multiple entries, then it takes you to the **Select Potential** page.

When editing a particular entry, you may freely edit the Spawning Entity `data.entity`, the Equipment Loot Table `data.equipment` or the Weight `weight` of this entry. Click **Edit Itself** to apply your changes.\
You may also choose to **Delete** this entry or **Edit its Light Levels**.

#### Quick Change Common Tags

Inside the **Edit Common Tags** option, you may change common base **attributes** or **equipments** of the entity.\
To quickly change attributes, type the number;\
To manage equipments, you can choose to copy one of the mob's equipment into your inventory, or replace one of the slots with an item inside your inventory or enderchest.

#### Sync SpawnPotentials changes

After you made any changes through any means to the `SpawnPotentials` of the spawner being quick edited, you may **press Q** to open the **Quick Edit Menu** dialog window and see a prompt for you to **Sync Changes** or **Revert Edits**

**Sync Changes** will sync your edits to this spawner to all other spawners that used to have the same `SpawnPotentials` with it.

**Revert Edits** will revert all your changes to the `SpawnPotentials` of this spawner.

### Quitting Quick Edit

To finish quick edit, do any of the following:
* **Sneak + Right Click** the spawner with the wand again
* **Sneak + Q** while hoding the wand
* Get far enough from the spawner, or the spawner's chunk is no longer loaded.
* Press the **Exit Quick Edit** button in the **Quick Edit Menu**
* Leave the server

## Register Pre-Existing Spawners

The DaBsu system will only keep track of registered spawners. After the data pack is installed, all player placed spawners will be automatically registered.

To register spawners existed before DaBsu is installed or spawners that are not placed by hand, use the **Start Scanning & Registering** function from DaBsu main menu. This is a very "thick" raycast that runs every other tick to check if there are any un-registered spawners along your line of sight.

During this is enabled, pressing Q while holding the wand will take you to its options that you can choose how long the ray is, how thick it is and if it can pierce through blocks.

Additionally, right clicking an unregistered spawner with DaBsu wand will register it.

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

All selected spawners will flash blue to indicate that.

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

Note if you run commands that changed the spawner's properties or potentials, you have to run the Self Check and Optimize function from the DaBsu main menu after the edit, so that all the changes you made are correctly updated in the DaBsu system.

## Custom Options

DaBsu provides users with a few options, split into 2 categories: **Global settings**, which affects the compatibility and performance of DaBsu, and **Personal Settings**, which are preferences only affecting yourself.

Both categories can be accessed through the DaBsu menu (Shift Right Click with DaBsu wand)

Users can also change their language in Personal Settings.

## Hibernating (Uninstalling)

If you are about to release your work into the public, you **must** hibernate DaBsu.

Do it by clicking the option in **Global settings** or running `function dabsu:hibernate`.

This removes all marker entities, scoreboards, and just about everything that DaBsu uses except storage files. After the data pack is hibernated, remove DaBsu from the datapacks folder so players cannot access it.

You can always resume DaBsu by putting it back into datapacks, `reload`, and run `function dabsu:resume`. All registered spawners will remain registered, provided that you did not remove DaBsu's storage file.

## Multiplayer

Multiple players may use DaBsu's quick edit at the same time without interfering each other (as long as they are not trying to edit the same spawner). For batch edit, the selection is shared among all players so there can only be one selection at a time, used by all players.

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