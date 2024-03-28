class DbQuery {
  String workplace = '''
      CREATE TABLE IF NOT EXISTS workplace (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        blockID TEXT NULL,
        blockCode TEXT NULL,
        blockName TEXT NULL,
        workplaceID TEXT NULL,
        workplaceCode TEXT NULL,
        workplaceName TEXT NULL,
        latitude DOUBLE NULL,
        longitude DOUBLE NULL,
        sectionID TEXT NULL,
        sectionName TEXT NULL
      )
    ''';

  String truck = '''
      CREATE TABLE IF NOT EXISTS truck (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        truckID TEXT NULL,
        truckCode TEXT NULL,
        truckNumber TEXT NULL,
        truckName TEXT NULL,
        machineryID TEXT NULL,
        rLDate TEXT NULL,
        rLTripNumber INTEGER NULL,
        rLStartLocation TEXT NULL,
        rLDestination TEXT NULL,
        rLStartTime TEXT NULL,
        rLEndTime TEXT NULL,
        rLStartMeterReading INTEGER NULL,
        rLEndMeterReading INTEGER NULL,
        rLRunningUnit INTEGER NULL,
        rLAllocationID TEXT NULL,
        rLAllocationCode TEXT NULL,
        rLAllocationName TEXT NULL,
        rLDivisionID TEXT NULL,
        divisionCode TEXT NULL,
        rLDivisionName TEXT NULL,
        standardTareWeight TEXT NULL,
        latestTareWeight TEXT NULL,
        lastCalibratedDate TEXT NULL,
        tolerencePercentage TEXT NULL,
        tareWeightDiffKg TEXT NULL,
        tolerenceKg TEXT NULL,
        deviantInfo TEXT NULL,
        rFID1 TEXT NULL,
        rFID2 TEXT NULL,
        maxCapacity TEXT NULL
      )
    ''';

  String role = '''
      CREATE TABLE IF NOT EXISTS role (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        employeeID TEXT NULL,
        employeeNumber TEXT NULL,
        employeeName TEXT NULL,
        effectiveFromDate TEXT NULL,
        effectiveToDate TEXT NULL,
        windowsLogin TEXT NULL,
        windowsLoginUsername TEXT NULL,
        roleID TEXT NULL,
        roleCode TEXT NULL,
        roleName TEXT NULL,
        allocationID TEXT NULL,
        allocationCode TEXT NULL,
        allocationName TEXT NULL
      )
    ''';

  String token = '''
      CREATE TABLE IF NOT EXISTS token (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT NULL,
        password TEXT NULL,
        token TEXT NULL,
        validDate TEXT NULL
      )
    ''';

  String login = '''
      CREATE TABLE IF NOT EXISTS login (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        status TEXT NULL,
        ok BOOLEAN NOT NULL default false,
        code INTEGER NULL,
        message TEXT NULL,
        windowsLogin TEXT NULL,
        title TEXT NULL,
        instanceType INTEGER NULL,
        windowsName TEXT NULL,
        lastLogon TEXT NULL,
        lastSetPass TEXT NULL,
        expiredPass TEXT NULL,
        ou TEXT NULL
      )
    ''';

  String division = '''
      CREATE TABLE IF NOT EXISTS division (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL
      )
    ''';

  String bjr = '''
      CREATE TABLE IF NOT EXISTS bjr (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        blockID TEXT NULL,
        blockCode TEXT NULL,
        blockName TEXT NULL,
        fromDate TEXT NULL,
        toDate TEXT NULL,
        totalBunches INTEGER NULL,
        totalNetWeight INTEGER NULL,
        averageBunchWeight DOUBLE NULL,
        unitName TEXT NULL
      )
    ''';

  String block = '''
      CREATE TABLE IF NOT EXISTS block (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        blockID TEXT NULL,
        blockCode TEXT NULL,
        blockName TEXT NULL,
        maturedArea DOUBLE NULL,
        immatureArea DOUBLE NULL,
        otherArea DOUBLE NULL,
        maturityAge INTEGER NULL,
        firstHarvestingDate TEXT NULL,
        parentBlockName TEXT NULL,
        fromDate TEXT NULL,
        toDate TEXT NULL,
        totalBunches INTEGER NULL,
        totalNetWeight INTEGER NULL,
        averageBunchWeight DOUBLE NULL,
        unitCode TEXT NULL,
        unitName TEXT NULL,
        blockAge TEXT NULL
      )
    ''';

  String estate = '''
      CREATE TABLE IF NOT EXISTS estate (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL
      )
    ''';

  String harvesting = '''
      CREATE TABLE IF NOT EXISTS harvesting (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        blockID TEXT NULL,
        blockCode TEXT NULL,
        blockName TEXT NULL,
        workplaceID TEXT NULL,
        workplaceCode TEXT NULL,
        weightEstimation INTEGER NULL,
        totalBunch INTEGER NULL,
        recordedTime TEXT NULL,
        latitude DOUBLE NULL,
        longitude DOUBLE NULL,
        buahN INTEGER NULL,
        buahA INTEGER NULL,
        buahE INTERGER NULL,
        workingDate TEXT NULL,
        ffbRecorder TEXT NULL
      )
    ''';

  String material = '''
      CREATE TABLE IF NOT EXISTS material (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        materialID TEXT NULL,
        materialCode TEXT NULL,
        materialName TEXT NULL,
        materialTypeID TEXT NULL,
        materialTypeName TEXT NULL,
        uomID TEXT NULL,
        uomCode TEXT NULL,
        uomName TEXT NULL,
        materialWeighingTypeID TEXT NULL,
        materialWeighingTypeName TEXT NULL,
        materialMovementTypeID TEXT NULL,
        materialMovementTypeName TEXT NULL,
        category TEXT NULL,
        categoryOrder INTEGER NULL,
        isWeightComparisonRequired INTEGER NULL
      )
    ''';

  String operator = '''
      CREATE TABLE IF NOT EXISTS operator (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        employeeID TEXT NULL,
        employeeNumber TEXT NULL,
        employeeName TEXT NULL,
        drivingLicenceExpiryDate TEXT NULL,
        workGroupRoleID TEXT NULL,
        workGroupRoleCode TEXT NULL,
        workGroupRoleName TEXT NULL
      )
    ''';

  String allocation = '''
      CREATE TABLE IF NOT EXISTS allocation (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        allocationID TEXT NULL,
        allocationCode TEXT NULL,
        allocationName TEXT NULL,
        blockRequired INTEGER NULL,
        proAnalysisTypeID TEXT NULL,
        proAnalysisTypeCode TEXT NULL,
        proAnalysisTypeName TEXT NULL,
        proCategoryID TEXT NULL,
        proCategoryName TEXT NULL,
        assAnalysisTypeID TEXT NULL,
        assAnalysisTypeCode TEXT NULL,
        assAnalysisTypeName TEXT NULL,
        assCategoryID TEXT NULL,
        assCategoryName TEXT NULL,
        ccAnalysisTypeID TEXT NULL,
        ccAnalysisTypeCode TEXT NULL,
        ccAnalysisTypeName TEXT NULL,
        ccCategoryID TEXT NULL,
        ccCategoryName TEXT NULL,
        isTbs TEXT NULL,
        isJangkos TEXT NULL,
        isPupuk TEXT NULL,
        isBibit TEXT NULL,
        fromAge TEXT NULL,
        toAge TEXT NULL
      )
    ''';

  String dashboardData = '''
      CREATE TABLE IF NOT EXISTS dashboard_data (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT NULL,
        data1 TEXT NULL,
        data2 TEXT NULL,
        data3 TEXT NULL,
        data4 TEXT NULL,
        data5 TEXT NULL,
        data6 TEXT NULL,
        data7 TEXT NULL,
        data8 TEXT NULL,
        data9 TEXT NULL,
        data10 TEXT NULL,
        data11 TEXT NULL,
        data12 TEXT NULL,
        data13 TEXT NULL,
        data14 TEXT NULL,
        data15 TEXT NULL
      )
    ''';

  String trip = '''
      CREATE TABLE IF NOT EXISTS trip (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        refNumber TEXT NULL,
        username TEXT NULL,
        tripName TEXT NULL,
        tripNo TEXT NULL,
        jenis TEXT NULL,
        truckCode TEXT NULL,
        truck TEXT NULL,
        supirCode TEXT NULL,
        supir TEXT NULL,
        jumlahKernet INTEGER NULL,
        odoAwal INTEGER NULL,
        odoAwalPhoto TEXT NULL,
        alokasiID TEXT NULL,
        alokasiCode TEXT NULL,
        alokasi TEXT NULL,
        analisisID TEXT NULL,
        analisisCode TEXT NULL,
        analisis TEXT NULL,
        projectID TEXT NULL,
        projectCode TEXT NULL,
        projectName TEXT NULL,
        materialID TEXT NULL,
        materialCode TEXT NULL,
        materialName TEXT NULL,
        materialMovement TEXT NULL,
        assetID TEXT NULL,
        assetCode TEXT NULL,
        assetName TEXT NULL,
        lokasiAwalCode TEXT NULL,
        lokasiAwal TEXT NULL,
        blokCode TEXT NULL,
        blok TEXT NULL,
        materiJumlah INTEGER NULL,
        materiBerat INTEGER NULL,
        materiPhoto TEXT NULL,
        tujuanCode TEXT NULL,
        tujuan TEXT NULL,
        unitAdministrasiCode TEXT NULL,
        unitAdministrasiID TEXT NULL,
        unitAdministrasi TEXT NULL,
        keterangan TEXT NULL,
        odoAkhir INTEGER NULL,
        odoAkhirPhoto TEXT NULL,
        tanggalStart TEXT NULL,
        tanggalEnd TEXT NULL,
        statusAsisten TEXT NULL,
        status TEXT NULL,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        vehicleID TEXT NULL,
        vehicleName TEXT NULL,
        createdDate TEXT NULL,
        systemDate TEXT NULL,
        checkDrvDate TEXT NULL,
        checkAssDate TEXT NULL
      )
    ''';

  String tbs = '''
      CREATE TABLE IF NOT EXISTS tbs (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        idTbs TEXT NULL,
        username TEXT NULL,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        blockID TEXT NULL,
        blockCode TEXT NULL,
        blockName TEXT NULL,
        workplaceID TEXT NULL,
        workplaceCode TEXT NULL,
        janjangPhoto TEXT NULL,
        janjang INTEGER NULL,
        estimasiBjr INTEGER NULL,
        estimasiBerat INTEGER NULL,
        estimasiKeterangan TEXT NULL,
        tanggal TEXT NULL,
        long TEXT NULL,
        lat TEXT NULL,
        isAutomatic TEXT NULL
      )
    ''';

  String tbsAsisten = '''
      CREATE TABLE IF NOT EXISTS tbs_asisten (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        idTbs TEXT NULL,
        username TEXT NULL,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        blockID TEXT NULL,
        blockCode TEXT NULL,
        blockName TEXT NULL,
        workplaceID TEXT NULL,
        workplaceCode TEXT NULL,
        workplaceName TEXT NULL,
        janjangPhoto TEXT NULL,
        kutipBersih TEXT NULL,
        buahTertinggal INT NULL,
        catatan TEXT NULL,
        tanggal TEXT NULL,
        long TEXT NULL,
        lat TEXT NULL
      )
    ''';

  String tbsBilik = '''
      CREATE TABLE IF NOT EXISTS tbs_bilik (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTuang TEXT NULL,
        idBilik TEXT NULL,
        username TEXT NULL,
        truckCode TEXT NULL,
        driverCode TEXT NULL,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        blockID TEXT NULL,
        blockCode TEXT NULL,
        blockName TEXT NULL,
        workplaceID TEXT NULL,
        workplaceCode TEXT NULL,
        janjangPhoto TEXT NULL,
        janjang INTEGER NULL,
        estimasiBjr INTEGER NULL,
        estimasiBerat INTEGER NULL,
        estimasiKeterangan TEXT NULL,
        tanggal TEXT NULL,
        status TEXT NULL,
        idTrip TEXT NULL
      )
    ''';

  String roleUser = '''
      CREATE TABLE IF NOT EXISTS role_user (            
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        windowsLogin TEXT NULL,
        windowsLoginUsername TEXT NULL,
        roleNameMaster TEXT NULL,
        roleNameDetail TEXT NULL,
        employeeID TEXT NULL,
        employeeNumber TEXT NULL,
        employeeName TEXT NULL,
        truckID TEXT NULL,
        truckCode TEXT NULL,
        truckNumber TEXT NULL,
        truckName TEXT NULL,
        isBlackListed TEXT NULL,
        drivingLicenceNumber TEXT NULL,
        drivingLicenceExpiryDate TEXT NULL,
        truckList TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        cutOffTime TEXT NULL,
        warningMessage TEXT NULL
      )
    ''';

  String kernet = '''
      CREATE TABLE IF NOT EXISTS kernet (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        username TEXT NULL,
        estateID TEXT NULL,
        driverHelperCode TEXT NULL,
        driverHelperName TEXT NULL,
        driverHelperID TEXT NULL,
        driverHelperRoleID TEXT NULL,
        driverHelperRoleName TEXT NULL
      )
    ''';

  String timbang = '''
      CREATE TABLE IF NOT EXISTS timbang (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        username TEXT NULL,
        brutto INTEGER NULL,
        tglBrutto TEXT NULL,
        tarra INTEGER NULL,
        tglTarra TEXT NULL,
        netto INTEGER NULL,
        lokasiTimbangan TEXT NULL,
        kodeLokasi TEXT NULL,
        timbanganCode TEXT NULL,
        timbanganName TEXT NULL,
        editedBy TEXT NULL
      )
    ''';

  String tuangHistory = '''
      CREATE TABLE IF NOT EXISTS tuang_history (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTuang TEXT NULL,
        bilik TEXT NULL,
        username TEXT NULL,
        truckCode TEXT NULL,
        truck TEXT NULL,
        supirCode TEXT NULL,
        supir TEXT NULL,
        tanggal TEXT NULL
      )
    ''';

  String bilik = '''
      CREATE TABLE IF NOT EXISTS bilik (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        bilikCode TEXT NULL,
        bilikName TEXT NULL,
        janjangMax INTEGER NULL,
        kapasitasMax INTEGER NULL
      )
    ''';

  String bilikData = '''
      CREATE TABLE IF NOT EXISTS bilik_data (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTuang TEXT NULL,
        username TEXT NULL,
        bilikCode TEXT NULL,
        bilikName TEXT NULL,
        workplaceCode TEXT NULL,
        workplace TEXT NULL,
        blockCode TEXT NULL,
        block TEXT NULL,
        janjang INTEGER NULL,
        estimasiBerat INTEGER NULL,
        estimasiKeterangan TEXT NULL,
        tanggal TEXT NULL,
        status TEXT NULL
      )
    ''';

  String project = '''
      CREATE TABLE IF NOT EXISTS project (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        projectID TEXT NULL,
        projectCode TEXT NULL,
        projectName TEXT NULL,
        projectCategoryID TEXT NULL,
        projectCodeName TEXT NULL
      )
    ''';

  String penalti = '''
      CREATE TABLE IF NOT EXISTS penalti (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        fKBusinessLocationID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        taskDefinitionID TEXT NULL,
        taskDefinitionName TEXT NULL,
        fromDate TEXT NULL,
        toDate TEXT NULL,
        allocationID TEXT NULL,
        allocationCode TEXT NULL,
        allocationName TEXT NULL,
        commodityID TEXT NULL,
        commodityName TEXT NULL,
        workGroupRoleID TEXT NULL,
        workGroupRoleName TEXT NULL,
        activityType TEXT NULL,
        printPriority INTEGER NULL,
        taskItemID TEXT NULL,
        taskItemName TEXT NULL,
        bunchFrom INTEGER NULL,
        bunchTo INTEGER NULL,
        taskRate INTEGER NULL
      )
    ''';

  String assets = '''
      CREATE TABLE IF NOT EXISTS assets (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        assetID TEXT NULL,
        assetCode TEXT NULL,
        assetName TEXT NULL,
        assetRegNo TEXT NULL,
        assetCategoryID TEXT NULL,
        assetCategoryCode TEXT NULL,
        assetCategoryName TEXT NULL
      )
    ''';

  String insentif = '''
      CREATE TABLE IF NOT EXISTS insentif (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        incentiveID TEXT NULL,
        incentiveCode TEXT NULL,
        incentiveName TEXT NULL,
        incentiveEffectiveDate TEXT NULL,
        restDayIncentiveFactor INTEGER NULL,
        holidayIncentiveFactor INTEGER NULL,
        taskItemID TEXT NULL,
        taskItemName TEXT NULL,
        task INTEGER NULL,
        uOM TEXT NULL,
        taskRate INTEGER NULL,
        overTaskRate INTEGER NULL,
        standardHours INTEGER NULL,
        leftBunchPenalty TEXT NULL,
        looseFruitPenalty TEXT NULL,
        allocationID TEXT NULL,
        allocationCode TEXT NULL,
        allocationName INTEGER NULL
      )
    ''';

  String truckIdle = '''
      CREATE TABLE IF NOT EXISTS truck_idle (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        username TEXT NULL,
        truckID TEXT NULL,
        truckCode TEXT NULL,
        truckNumber TEXT NULL,
        truckName TEXT NULL,
        alasanIdle TEXT NULL,
        durasiIdle TEXT NULL,
        tanggal TEXT NULL
      )
    ''';

  String truckGanti = '''
      CREATE TABLE IF NOT EXISTS truck_ganti (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        idNewTrip TEXT NULL,
        username TEXT NULL,
        truckIDBefore TEXT NULL,
        truckCodeBefore TEXT NULL,
        truckNumberBefore TEXT NULL,
        truckNameBefore TEXT NULL,
        truckID TEXT NULL,
        truckCode TEXT NULL,
        truckNumber TEXT NULL,
        truckName TEXT NULL,
        endMeter INTEGER NULL,
        fotoEndMeter TEXT NULL,
        startMeter INTEGER NULL,
        fotoStartMeter TEXT NULL,
        alasanGanti TEXT NULL,
        tanggal TEXT NULL
      )
    ''';

  String operatorHelper = '''
      CREATE TABLE IF NOT EXISTS operator_helper (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        employeeID TEXT NULL,
        employeeNumber TEXT NULL,
        employeeName TEXT NULL,
        pRSRoleID TEXT NULL,
        pRSRoleCode TEXT NULL,
        pRSRoleName TEXT NULL,
        operatorHelperID TEXT NULL,
        cFNRoleID TEXT NULL,
        cFNRoleName TEXT NULL,
        windowsLogin TEXT NULL,
        drivingLicenceNumber TEXT NULL,
        drivingLicenceDate TEXT NULL,
        drivingLicenceExpiryDate TEXT NULL,
        effectiveFromDate TEXT NULL,
        effectiveToDate TEXT NULL,
        assetID TEXT NULL,
        truckID TEXT NULL,
        truckCode TEXT NULL,
        truckNumber TEXT NULL,
        truckName TEXT NULL
      )
    ''';

  String helper = '''
      CREATE TABLE IF NOT EXISTS helper (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        employeeID TEXT NULL,
        employeeNumber TEXT NULL,
        employeeName TEXT NULL,
        dOB TEXT NULL,
        helperRoleID TEXT NULL,
        helperRoleName TEXT NULL,
        totalJadiKernet TEXT NULL
      )
    ''';

  String tbsCheck = '''
      CREATE TABLE IF NOT EXISTS tbs_check (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        username TEXT NULL,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        blockID TEXT NULL,
        blockCode TEXT NULL,
        blockName TEXT NULL,
        workplaceID TEXT NULL,
        workplaceCode TEXT NULL,
        janjangSupir INTEGER NULL,
        janjangPanen INTEGER NULL,
        selisihJanjang INTEGER NULL,
        persenSelisih TEXT NULL,
        alasanSelisih TEXT NULL,
        namaSupir TEXT NULL,
        namaKrani TEXT NULL,
        tanggal TEXT NULL,
        tanggalUpdate TEXT NULL,
        isAwan TEXT NULL
      )
    ''';

  String asistenTrip = '''
      CREATE TABLE IF NOT EXISTS asisten_trip (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        refNumber TEXT NULL,
        username TEXT NULL,
        tripName TEXT NULL,
        tripNo TEXT NULL,
        jenis TEXT NULL,
        truckCode TEXT NULL,
        truck TEXT NULL,
        supirCode TEXT NULL,
        supir TEXT NULL,
        jumlahKernet INTEGER NULL,
        odoAwal INTEGER NULL,
        odoAwalPhoto TEXT NULL,
        alokasiID TEXT NULL,
        alokasiCode TEXT NULL,
        alokasi TEXT NULL,
        analisisID TEXT NULL,
        analisisCode TEXT NULL,
        analisis TEXT NULL,
        projectID TEXT NULL,
        projectCode TEXT NULL,
        projectName TEXT NULL,
        materialID TEXT NULL,
        materialCode TEXT NULL,
        materialName TEXT NULL,
        materialMovement TEXT NULL,
        assetID TEXT NULL,
        assetCode TEXT NULL,
        assetName TEXT NULL,
        lokasiAwalCode TEXT NULL,
        lokasiAwal TEXT NULL,
        blokCode TEXT NULL,
        blok TEXT NULL,
        materiJumlah INTEGER NULL,
        materiBerat INTEGER NULL,
        materiPhoto TEXT NULL,
        tujuanCode TEXT NULL,
        tujuan TEXT NULL,
        unitAdministrasiCode TEXT NULL,
        unitAdministrasiID TEXT NULL,
        unitAdministrasi TEXT NULL,
        keterangan TEXT NULL,
        odoAkhir INTEGER NULL,
        odoAkhirPhoto TEXT NULL,
        tanggalStart TEXT NULL,
        tanggalEnd TEXT NULL,
        statusAsisten TEXT NULL,
        status TEXT NULL,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        vehicleID TEXT NULL,
        vehicleName TEXT NULL,
        createdDate TEXT NULL,
        systemDate TEXT NULL,
        checkDrvDate TEXT NULL,
        checkAssDate TEXT NULL
      )
    ''';

  String asistenTbs = '''
      CREATE TABLE IF NOT EXISTS asisten_tbs (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        idTbs TEXT NULL,
        username TEXT NULL,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        divisionID TEXT NULL,
        divisionCode TEXT NULL,
        divisionName TEXT NULL,
        blockID TEXT NULL,
        blockCode TEXT NULL,
        blockName TEXT NULL,
        workplaceID TEXT NULL,
        workplaceCode TEXT NULL,
        janjangPhoto TEXT NULL,
        janjang INTEGER NULL,
        estimasiBjr INTEGER NULL,
        estimasiBerat INTEGER NULL,
        estimasiKeterangan TEXT NULL,
        tanggal TEXT NULL,
        long TEXT NULL,
        lat TEXT NULL,
        isAutomatic TEXT NULL
      )
    ''';

  String asistenTruckIdle = '''
      CREATE TABLE IF NOT EXISTS asisten_truckidle (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        username TEXT NULL,
        truckID TEXT NULL,
        truckCode TEXT NULL,
        truckNumber TEXT NULL,
        truckName TEXT NULL,
        alasanIdle TEXT NULL,
        durasiIdle TEXT NULL,
        tanggal TEXT NULL
      )
    ''';

  String asistenKernet = '''
      CREATE TABLE IF NOT EXISTS asisten_kernet (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        username TEXT NULL,
        estateID TEXT NULL,
        driverHelperCode TEXT NULL,
        driverHelperName TEXT NULL,
        driverHelperID TEXT NULL,
        driverHelperRoleID TEXT NULL,
        driverHelperRoleName TEXT NULL
      )
    ''';

  String asistenTimbang = '''
      CREATE TABLE IF NOT EXISTS asisten_timbang (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        username TEXT NULL,
        brutto INTEGER NULL,
        tglBrutto TEXT NULL,
        tarra INTEGER NULL,
        tglTarra TEXT NULL,
        netto INTEGER NULL,
        lokasiTimbangan TEXT NULL,
        kodeLokasi TEXT NULL,
        timbanganCode TEXT NULL,
        timbanganName TEXT NULL,
        editedBy TEXT NULL
      )
    ''';

  String trackingTruck = '''
      CREATE TABLE IF NOT EXISTS tracking_truck (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        idTrip TEXT NULL,
        username TEXT NULL,
        employeeID TEXT NULL,
        truckID TEXT NULL,
        lat TEXT NULL,
        long TEXT NULL,
        tanggal TEXT NULL
      )
    ''';

  String loginuser = '''
      CREATE TABLE IF NOT EXISTS login_user (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT NULL,
        password TEXT NULL,
        ou TEXT NULL,
        lastlogin TEXT NULL,
        status TEXT NULL,
        ok BOOLEAN NOT NULL default false,
        code INTEGER NULL,
        message TEXT NULL,
        windowsLogin TEXT NULL,
        title TEXT NULL,
        instanceType INTEGER NULL,
        windowsName TEXT NULL,
        lastLogon TEXT NULL,
        lastSetPass TEXT NULL,
        expiredPass TEXT NULL
      )
  ''';

  String pindahUser = '''
      CREATE TABLE IF NOT EXISTS pindah_user (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT NULL,
        userAwal TEXT NULL,
        userAkhir TEXT NULL,
        idTrip TEXT NULL,
        keterangan TEXT NULL,
        tanggal TEXT NULL,
        divisiID TEXT NULL,
        ou TEXT NULL
      )
    ''';

  String datadelete = '''
      CREATE TABLE IF NOT EXISTS data_delete (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        typedata TEXT NULL,
        iddata TEXT NULL
      )
  ''';

  String tripIndex = '''
      CREATE UNIQUE INDEX IF NOT EXISTS idTrip ON trip(idTrip)
  ''';

  String tbsIndex = '''
      CREATE UNIQUE INDEX IF NOT EXISTS idTbs ON tbs(idTbs)
  ''';

  String locomotive = '''
      CREATE TABLE IF NOT EXISTS locomotive (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        assetID TEXT NULL,
        locoID TEXT NULL,
        locoCode TEXT NULL,
        locoNumber TEXT NULL,
        locoName TEXT NULL,
        machineryID TEXT NULL,
        lastMeterReading INTEGER NULL,
        lastRunningUnit INTEGER NULL,
        standardTareWeight INTEGER NULL,
        lastestTareWeight INTEGER NULL,
        lastCalibratedDate TEXT NULL,
        tolerancePercentage INTEGER NULL,
        tareWeightDiffKg INTEGER NULL,
        toleranceKg INTEGER NULL,
        deviantInfo TEXT NULL,
        maxCapacity INTEGER NULL
      )
    ''';

  String tbsAlert = '''
      CREATE TABLE IF NOT EXISTS tbs_alert (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT NULL,
        idTrip TEXT NULL,
        workplaceID TEXT NULL,
        workplaceCode TEXT NULL,
        janjangPhoto TEXT NULL,
        janjangSupir INTEGER NULL,
        janjangPanen INTEGER NULL,
        createdDate TEXT NULL,
        status INTEGER NULL
      )
    ''';

  String cage = '''
      CREATE TABLE IF NOT EXISTS cage (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        assetID TEXT NULL,
        cageID TEXT NULL,
        cageCode TEXT NULL,
        cageNumber TEXT NULL,
        cageName TEXT NULL,
        standardTareWeight INTEGER NULL,
        lastestTareWeight INTEGER NULL,
        numberID TEXT NULL
      )
    ''';

  String chasis = '''
      CREATE TABLE IF NOT EXISTS chasis (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        estateID TEXT NULL,
        estateCode TEXT NULL,
        estateName TEXT NULL,
        assetID TEXT NULL,
        chassisID TEXT NULL,
        chassisCode TEXT NULL,
        chassisNumber TEXT NULL,
        chassisName TEXT NULL,
        standardTareWeight INTEGER NULL,
        lastestTareWeight INTEGER NULL,
        numberID TEXT NULL
      )
    ''';
}
