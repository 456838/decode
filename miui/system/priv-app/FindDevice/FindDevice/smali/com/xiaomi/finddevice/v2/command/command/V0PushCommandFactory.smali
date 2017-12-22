.class public Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;
.super Lcom/xiaomi/finddevice/v2/command/command/V0CommandFactory;
.source "V0PushCommandFactory.java"


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
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "location"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "noise"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/NoiseCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "lock"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wipe"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "deactivate"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/DeactiveCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/V0CommandFactory;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public build(Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;
    .locals 23
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
    .line 40
    const-string/jumbo v4, "android.intent.extra.finddevice.command"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 41
    .local v13, "content":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 42
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    const-string/jumbo v9, "Null command content. "

    invoke-direct {v4, v9}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_0
    const/4 v5, 0x0

    .line 46
    .local v5, "type":Ljava/lang/String;
    const/4 v8, 0x0

    .line 47
    .local v8, "pwd":Ljava/lang/String;
    const/4 v6, 0x0

    .line 48
    .local v6, "seqno":Ljava/lang/String;
    const/4 v7, 0x0

    .line 49
    .local v7, "time":Ljava/lang/String;
    const/4 v10, 0x0

    .line 50
    .local v10, "digest":Ljava/lang/String;
    const/4 v11, 0x0

    .line 53
    .local v11, "auto":Z
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v14, "contentObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "command"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v4, "lock"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    const-string/jumbo v4, "pwd"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 58
    .end local v8    # "pwd":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "msgId"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "seqno":Ljava/lang/String;
    const-string/jumbo v4, "time"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "time":Ljava/lang/String;
    const-string/jumbo v4, "digest"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, "digest":Ljava/lang/String;
    const-string/jumbo v4, "auto"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 66
    .local v11, "auto":Z
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v9, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-static {v4, v0, v5, v9}, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->buildEmptyCommandByType(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/Object;Ljava/util/Map;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v12

    .line 68
    .local v12, "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    :try_start_1
    sget-object v4, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->V0:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    iput-object v4, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->version:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    .line 69
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    .line 70
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->timestamp:J

    .line 71
    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->uid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    iget-wide v0, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v4, v18, v20

    if-gez v4, :cond_2

    .line 77
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Bad seq: "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v0, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v17, ". "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "seqno":Ljava/lang/String;
    .end local v7    # "time":Ljava/lang/String;
    .end local v10    # "digest":Ljava/lang/String;
    .end local v12    # "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    .end local v14    # "contentObj":Lorg/json/JSONObject;
    .local v11, "auto":Z
    :catch_0
    move-exception v16

    .line 63
    .local v16, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    const-string/jumbo v9, "Bad command content. "

    move-object/from16 v0, v16

    invoke-direct {v4, v9, v0}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 72
    .end local v16    # "e":Lorg/json/JSONException;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "seqno":Ljava/lang/String;
    .restart local v7    # "time":Ljava/lang/String;
    .restart local v10    # "digest":Ljava/lang/String;
    .local v11, "auto":Z
    .restart local v12    # "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    .restart local v14    # "contentObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v15

    .line 73
    .local v15, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Bad command content: "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v17, ". "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-wide v0, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, p3

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->verifySeq(JJ)V

    move-object/from16 v4, p0

    move-object/from16 v9, p5

    .line 81
    invoke-virtual/range {v4 .. v10}, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/String;)V

    .line 83
    return-object v12
.end method
