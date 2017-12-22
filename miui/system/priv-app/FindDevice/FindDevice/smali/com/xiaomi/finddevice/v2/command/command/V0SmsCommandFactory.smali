.class public Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;
.super Lcom/xiaomi/finddevice/v2/command/command/V0CommandFactory;
.source "V0SmsCommandFactory.java"


# static fields
.field private static final CMD_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/finddevice/v2/command/command/Command;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    .line 19
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "l"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "n"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/NoiseCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "k"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "w"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "d"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/DeactiveCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/V0CommandFactory;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public build(Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;
    .locals 19
    .param p1, "info"    # Landroid/os/Bundle;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "baseSeq"    # J
    .param p5, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    .param p6, "spub1"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .param p7, "spub2"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$SeqIsOldException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    .line 48
    const-string/jumbo v2, "android.intent.extra.finddevice.command"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, "content":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 50
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    const-string/jumbo v7, "Null command content. "

    invoke-direct {v2, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_0
    const-string/jumbo v2, ","

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 54
    .local v13, "params":[Ljava/lang/String;
    if-eqz v13, :cond_1

    array-length v2, v13

    const/4 v7, 0x5

    if-ge v2, v7, :cond_2

    .line 56
    :cond_1
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Bad command content: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v14, ". "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_2
    const/4 v2, 0x0

    aget-object v2, v13, v2

    const-string/jumbo v7, "mfc"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 59
    const/4 v2, 0x1

    aget-object v3, v13, v2

    .line 60
    .local v3, "type":Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v4, v13, v2

    .line 61
    .local v4, "seqno":Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v5, v13, v2

    .line 63
    .local v5, "time":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "pwd":Ljava/lang/String;
    const/4 v8, 0x0

    .line 64
    .local v8, "digest":Ljava/lang/String;
    const-string/jumbo v2, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    const/4 v2, 0x4

    aget-object v6, v13, v2

    .line 66
    .local v6, "pwd":Ljava/lang/String;
    const/4 v2, 0x5

    aget-object v8, v13, v2

    .line 71
    .end local v6    # "pwd":Ljava/lang/String;
    .local v8, "digest":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "##"

    invoke-virtual {v8, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 72
    .local v12, "index":I
    if-gez v12, :cond_4

    .line 73
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Bad command content: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v14, ". "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    .end local v12    # "index":I
    .local v6, "pwd":Ljava/lang/String;
    .local v8, "digest":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x4

    aget-object v8, v13, v2

    .local v8, "digest":Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v6    # "pwd":Ljava/lang/String;
    .restart local v12    # "index":I
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v8, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v7, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3, v7}, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->buildEmptyCommandByType(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/Object;Ljava/util/Map;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v9

    .line 79
    .local v9, "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    :try_start_0
    sget-object v2, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->V0:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    iput-object v2, v9, Lcom/xiaomi/finddevice/v2/command/command/Command;->version:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    .line 80
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v9, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    .line 81
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v9, Lcom/xiaomi/finddevice/v2/command/command/Command;->timestamp:J

    .line 82
    const-string/jumbo v2, "android.intent.extra.from_address"

    const-string/jumbo v7, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfrom:Ljava/lang/String;

    .line 83
    const-string/jumbo v2, "android.intent.extra.from_slotId"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v9, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSlotId:I

    .line 84
    const-string/jumbo v2, "android.intent.extra.from_subId"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v9, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSubId:I

    .line 85
    move-object/from16 v0, p2

    iput-object v0, v9, Lcom/xiaomi/finddevice/v2/command/command/Command;->uid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-wide v14, v9, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-gez v2, :cond_5

    .line 91
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Bad seq: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v14, v9, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v14, ". "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :catch_0
    move-exception v11

    .line 87
    .local v11, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Bad command content: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v14, ". "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-wide v14, v9, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v14, v15}, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->verifySeq(JJ)V

    move-object/from16 v2, p0

    move-object/from16 v7, p5

    .line 95
    invoke-virtual/range {v2 .. v8}, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->handleBuildSMSCommandTelephonyError(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/command/command/Command;)V

    .line 99
    return-object v9
.end method
