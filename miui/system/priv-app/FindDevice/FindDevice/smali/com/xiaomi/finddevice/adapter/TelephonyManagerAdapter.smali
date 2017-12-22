.class public Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;
.super Ljava/lang/Object;
.source "TelephonyManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;,
        Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;,
        Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;,
        Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)B
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->radioTypeToByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)S
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->MCCorMNCToShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static MCCorMNCToShort(Ljava/lang/String;)S
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x66

    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v2, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    .line 293
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 294
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 297
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 298
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    if-le v0, v4, :cond_1

    .line 300
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 305
    .end local v0    # "c":C
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-short v3, v3

    return v3
.end method

.method public static enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManagerEx;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method private static fillNeighboringCellInfo(Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;I)V
    .locals 14
    .param p0, "info"    # Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;
    .param p1, "maxNeighborCount"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 213
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v9

    .line 215
    .local v9, "telephonyManager":Lmiui/telephony/TelephonyManagerEx;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->neighbors:Ljava/util/ArrayList;

    .line 218
    iget v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->slotId:I

    invoke-virtual {v9, v10}, Lmiui/telephony/TelephonyManagerEx;->getCellLocationForSlot(I)Landroid/telephony/CellLocation;

    move-result-object v2

    .line 219
    .local v2, "cellLocation":Landroid/telephony/CellLocation;
    const/4 v3, 0x0

    .line 220
    .local v3, "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    instance-of v10, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v10, :cond_1

    move-object v5, v2

    .line 221
    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .line 222
    .local v5, "cl":Landroid/telephony/gsm/GsmCellLocation;
    new-instance v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;

    invoke-direct {v1}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;-><init>()V

    .line 223
    .local v1, "cell":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;
    iget-object v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileCountryCode:Ljava/lang/String;

    iput-object v10, v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->mobileCountryCode:Ljava/lang/String;

    .line 224
    iget-object v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileNetworkCode:Ljava/lang/String;

    iput-object v10, v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->mobileNetworkCode:Ljava/lang/String;

    .line 225
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    iput v10, v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->locationAreaCode:I

    .line 226
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    iput v10, v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->cellId:I

    .line 227
    move-object v3, v1

    .line 240
    .end local v1    # "cell":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;
    .end local v3    # "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    .end local v5    # "cl":Landroid/telephony/gsm/GsmCellLocation;
    :goto_0
    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;->isGoodInfo()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 242
    iget-object v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->neighbors:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    :goto_1
    iget v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->slotId:I

    invoke-virtual {v9, v10}, Lmiui/telephony/TelephonyManagerEx;->getNeighboringCellInfoForSlot(I)Ljava/util/List;

    move-result-object v8

    .line 250
    .local v8, "neighboringList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-nez v8, :cond_4

    .line 251
    new-array v10, v13, [Ljava/lang/Object;

    const-string/jumbo v11, "null neighboringList."

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 252
    return-void

    .line 228
    .end local v8    # "neighboringList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .restart local v3    # "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    :cond_1
    instance-of v10, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v10, :cond_2

    move-object v4, v2

    .line 229
    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 230
    .local v4, "cl":Landroid/telephony/cdma/CdmaCellLocation;
    new-instance v0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;-><init>()V

    .line 231
    .local v0, "cell":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;
    iget-object v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileCountryCode:Ljava/lang/String;

    iput-object v10, v0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->mobileCountryCode:Ljava/lang/String;

    .line 232
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v10

    iput v10, v0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->systemId:I

    .line 233
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v10

    iput v10, v0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->networkId:I

    .line 234
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v10

    iput v10, v0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->baseStationId:I

    .line 235
    move-object v3, v0

    .local v3, "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    goto :goto_0

    .line 237
    .end local v0    # "cell":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;
    .end local v4    # "cl":Landroid/telephony/cdma/CdmaCellLocation;
    .local v3, "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    :cond_2
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "cellLocation is null or instance type not recognized. "

    aput-object v11, v10, v12

    aput-object v2, v10, v13

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    .end local v3    # "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    :cond_3
    new-array v10, v13, [Ljava/lang/Object;

    const-string/jumbo v11, "Bad connected cell info. Ignore. "

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 254
    .restart local v8    # "neighboringList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_4
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "neighboringCellInfo$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/NeighboringCellInfo;

    .line 255
    .local v6, "neighboringCellInfo":Landroid/telephony/NeighboringCellInfo;
    const/4 v3, 0x0

    .line 256
    .restart local v3    # "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    const-string/jumbo v10, "gsm"

    iget-object v11, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->radioType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 257
    new-instance v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;

    invoke-direct {v1}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;-><init>()V

    .line 258
    .restart local v1    # "cell":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;
    iget-object v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileCountryCode:Ljava/lang/String;

    iput-object v10, v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->mobileCountryCode:Ljava/lang/String;

    .line 259
    invoke-virtual {v6}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->mobileNetworkCode:Ljava/lang/String;

    .line 260
    invoke-virtual {v6}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v10

    iput v10, v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->locationAreaCode:I

    .line 261
    invoke-virtual {v6}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v10

    iput v10, v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->cellId:I

    .line 262
    move-object v3, v1

    .line 274
    .end local v1    # "cell":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;
    .local v3, "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    :goto_2
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;->isGoodInfo()Z

    move-result v10

    if-nez v10, :cond_9

    .line 275
    new-array v10, v13, [Ljava/lang/Object;

    const-string/jumbo v11, "Bad info of cell that is not currently connected. Ignore. "

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 280
    :goto_3
    iget-object v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->neighbors:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, p1, :cond_5

    .line 281
    new-array v10, v13, [Ljava/lang/Object;

    const-string/jumbo v11, "maxNeighborCount reached. Stop adding. "

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 212
    .end local v3    # "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    .end local v6    # "neighboringCellInfo":Landroid/telephony/NeighboringCellInfo;
    :cond_6
    :goto_4
    return-void

    .line 263
    .local v3, "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    .restart local v6    # "neighboringCellInfo":Landroid/telephony/NeighboringCellInfo;
    :cond_7
    const-string/jumbo v10, "cdma"

    iget-object v11, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->radioType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 264
    new-instance v0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;-><init>()V

    .line 265
    .restart local v0    # "cell":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;
    iget-object v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileCountryCode:Ljava/lang/String;

    iput-object v10, v0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->mobileCountryCode:Ljava/lang/String;

    .line 266
    invoke-virtual {v6}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v10

    iput v10, v0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->systemId:I

    .line 267
    invoke-virtual {v6}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v10

    iput v10, v0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->networkId:I

    .line 268
    invoke-virtual {v6}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v10

    iput v10, v0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->baseStationId:I

    .line 269
    move-object v3, v0

    .local v3, "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    goto :goto_2

    .line 271
    .end local v0    # "cell":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;
    .local v3, "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    :cond_8
    new-array v10, v13, [Ljava/lang/Object;

    const-string/jumbo v11, "Radio type not recongnized. Ignore all cells that are not currently connected. "

    aput-object v11, v10, v12

    invoke-static {v10}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_4

    .line 277
    .local v3, "cellToAdd":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    :cond_9
    iget-object v10, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->neighbors:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public static getSlotInfo(II)Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;
    .locals 10
    .param p0, "slotId"    # I
    .param p1, "maxNeighborCount"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 180
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v3

    .line 182
    .local v3, "telephonyManager":Lmiui/telephony/TelephonyManagerEx;
    new-instance v2, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;

    invoke-direct {v2}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;-><init>()V

    .line 183
    .local v2, "slotInfo":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;
    iput p0, v2, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->slotId:I

    .line 185
    invoke-virtual {v3, p0}, Lmiui/telephony/TelephonyManagerEx;->getPhoneTypeForSlot(I)I

    move-result v1

    .line 186
    .local v1, "radioType":I
    if-ne v1, v8, :cond_0

    .line 187
    const-string/jumbo v4, "cdma"

    iput-object v4, v2, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->radioType:Ljava/lang/String;

    .line 194
    :goto_0
    invoke-virtual {v3, p0}, Lmiui/telephony/TelephonyManagerEx;->getNetworkOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "networkOperator":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_2

    .line 196
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileCountryCode:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileNetworkCode:Ljava/lang/String;

    .line 202
    :goto_1
    invoke-static {v2, p1}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->fillNeighboringCellInfo(Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;I)V

    .line 204
    return-object v2

    .line 188
    .end local v0    # "networkOperator":Ljava/lang/String;
    :cond_0
    if-ne v1, v7, :cond_1

    .line 189
    const-string/jumbo v4, "gsm"

    iput-object v4, v2, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->radioType:Ljava/lang/String;

    goto :goto_0

    .line 191
    :cond_1
    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "Bad radio type: "

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 199
    .restart local v0    # "networkOperator":Ljava/lang/String;
    :cond_2
    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "Bad network operator: "

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static isVirtualSimCard(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-static {p0}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 208
    :cond_0
    return v0
.end method

.method private static radioTypeToByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string/jumbo v0, "gsm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x0

    return v0

    .line 312
    :cond_0
    const-string/jumbo v0, "cdma"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const/4 v0, 0x1

    return v0

    .line 315
    :cond_1
    const/4 v0, -0x1

    return v0
.end method
