# Keybridge

Keybridge is a lightweight compatibility bridge built for **Qbox**
servers.\
It connects `okokvehicleshopv2` with `mVehicle`'s key system, ensuring
that vehicles purchased from the dealership are automatically registered
and that the buyer receives proper key ownership.

Simple. Lightweight. Plug-and-play.

------------------------------------------------------------------------

## ✨ Features

-   Automatic key assignment on vehicle purchase
-   Seamless integration between `okokvehicleshopv2` and `mVehicle`
-   Built specifically for Qbox
-   Clean and minimal structure

------------------------------------------------------------------------

## 📦 Requirements

Make sure the following resources are installed and running:

-   `okokvehicleshopv2`
-   `mVehicle`
-   Qbox Framework

------------------------------------------------------------------------

## 📁 Installation

1.  Clone or download this repository:

``` bash
git clone https://github.com/Jac00v/Keybridge.git
```

2.  Place the `Keybridge` folder inside your server's `resources`
    directory.

3.  Ensure the resource starts **before** its dependencies in your
    `server.cfg`:

``` cfg
ensure Keybridge
ensure okokvehicleshopv2
ensure mVehicle
```

4.  Restart your server.

------------------------------------------------------------------------
## 🔑 Removing Key Item After Delivery / Cancel

If you want the key item to be removed when completing an
`okokvehicleshop` delivery or canceling a delivery job, you must replace
the `RemoveVehicleKeys` function inside:

    okokvehicleshop/cl_utils.lua

Replace the (non)existing function with:

``` lua
function RemoveVehicleKeys(vehicle, plate)
    if Config.KeySystem == 'qb-vehiclekeys' then
        TriggerEvent("vehiclekeys:client:RemoveOwner", plate)
    end
end
```

This ensures the vehicle keys are properly removed from the player when
the delivery job is completed or canceled.

------------------------------------------------------------------------
## 📄 License

This project is licensed under the **GNU General Public License v3.0
(GPL-3.0)**.\
See the `LICENSE` file for full license details.
