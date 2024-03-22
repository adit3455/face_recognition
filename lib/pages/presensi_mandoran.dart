import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:socfindo_page_absensi/constant/color_const.dart';

class AbsensiKemandoran extends StatelessWidget {
  const AbsensiKemandoran({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Absensi Kemandoran"),
        backgroundColor: ColorConst.white,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: const TextStyle(fontSize: 20.0, color: Colors.black),
        elevation: 2,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_add,
              color: ColorConst.primary,
            ),
          )
        ],
      ),
      backgroundColor: ColorConst.backgroundGrey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(color: ColorConst.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Suhedi",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "8",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("1502392",
                                style: Theme.of(context).textTheme.bodyMedium),
                            const SizedBox(width: 5.0),
                            Text(
                              "Mandor Perawatan",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: ColorConst.textGrey),
                            ),
                          ],
                        ),
                        Text(
                          "Pekerja",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: ColorConst.textGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Daftar Pekerja Perawatan (8)",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: ColorConst.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Slidable(
                        key: const ValueKey(0),
                        startActionPane: ActionPane(
                          dragDismissible: true,
                          dismissible: DismissiblePane(
                            onDismissed: () {},
                            closeOnCancel: true,
                          ),
                          motion: const StretchMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {},
                              backgroundColor: ColorConst.sliderLeft,
                              foregroundColor: ColorConst.primary,
                              icon: Icons.photo_camera_front_rounded,
                              label: 'Set Status Tidak Hadir',
                            ),
                          ],
                        ),
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          dismissible: DismissiblePane(
                            onDismissed: () {},
                            closeOnCancel: true,
                          ),
                          children: [
                            SlidableAction(
                              flex: 2,
                              onPressed: (context) {},
                              backgroundColor: ColorConst.sliderRight,
                              foregroundColor: ColorConst.redWarning,
                              icon: Icons.archive,
                              label: 'Pindah Kemandoran',
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Suhedi",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                ),
                                const SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    Text("197",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                    const SizedBox(width: 5.0),
                                    Text(
                                      "1502391",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: ColorConst.textGrey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            CupertinoSwitch(
                              value: false,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: screenWidth,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: ColorConst.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tidak Hadir (1)",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                const SizedBox(height: 20.0),
                Dismissible(
                  key: const Key("0"),
                  secondaryBackground: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Set Status Ketidakhadiran"),
                      Icon(Icons.photo_camera_front_rounded,
                          color: ColorConst.primary)
                    ],
                  ),
                  background: Container(
                    decoration: BoxDecoration(color: ColorConst.redWarning),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Pindah Kemandoran"),
                          Icon(Icons.warning_rounded,
                              color: ColorConst.redWarning)
                        ],
                      ),
                    ),
                  ),
                  child: Material(
                    color: ColorConst.greyNanggung,
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10.0),
                      onTap: () {
                        print('object');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Suhedi",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                ),
                                const SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    Text("197",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium),
                                    const SizedBox(width: 5.0),
                                    Text(
                                      "1502391",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: ColorConst.textGrey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: const Text(
                                "M",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: SizedBox(
                    width: screenWidth * 0.8,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: ColorConst.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                      onPressed: () {},
                      child: Text(
                        "Simpan Data Kehadiran",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: ColorConst.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
