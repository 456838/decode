.class public Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;
.super Lcom/xiaomi/finddevice/v2/command/command/V1CommandFactory;
.source "V1PushCommandFactory.java"


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
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    .line 45
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "location"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "noise"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/NoiseCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "lock"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "wipe"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "close"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/CloseCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "deactivate"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/DeactiveCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const-string/jumbo v1, "lost"

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/V1CommandFactory;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 225
    const/4 v0, 0x5

    .line 227
    .local v0, "BUFFER_LEN":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 228
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x5

    new-array v2, v4, [B

    .line 229
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 230
    .local v3, "read":I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 231
    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 233
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method private verifySignature(Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)V
    .locals 28
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "contentObj"    # Lorg/json/JSONObject;
    .param p3, "spub1"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .param p4, "spub2"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    .line 143
    const/16 v20, 0x0

    .line 145
    .local v20, "signature":[B
    :try_start_0
    const-string/jumbo v24, "sign"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/xiaomi/finddevice/common/util/KeyTool;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .line 146
    .local v20, "signature":[B
    if-nez v20, :cond_0

    .line 147
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Bad signature hex string: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ". "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v20    # "signature":[B
    :catch_0
    move-exception v15

    .line 150
    .local v15, "e":Lorg/json/JSONException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "No or bad signature supplied: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ". "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v15}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 153
    .end local v15    # "e":Lorg/json/JSONException;
    .restart local v20    # "signature":[B
    :cond_0
    new-instance v21, Ljava/util/TreeMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/TreeMap;-><init>()V

    .line 155
    .local v21, "sortMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 157
    .local v6, "dc":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->getDeviceCredentialManager(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    move-result-object v24

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v25

    .line 157
    invoke-interface/range {v24 .. v25}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 174
    .local v6, "dc":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    if-nez v6, :cond_1

    .line 175
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v25, "Null device credential. "

    invoke-direct/range {v24 .. v25}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 171
    .local v6, "dc":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :catch_1
    move-exception v7

    .line 172
    .local v7, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v25, "Getting device credential failed. "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 169
    .end local v7    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_2
    move-exception v12

    .line 170
    .local v12, "e":Ljava/io/IOException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v25, "Getting device credential failed. "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v12}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 167
    .end local v12    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 168
    .local v9, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v25, "Getting device credential failed. "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v9}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 165
    .end local v9    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_4
    move-exception v8

    .line 166
    .local v8, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v25, "Getting device credential failed. "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v8}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 163
    .end local v8    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_5
    move-exception v10

    .line 164
    .local v10, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v25, "Getting device credential failed. "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v10}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 161
    .end local v10    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_6
    move-exception v11

    .line 162
    .local v11, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v25, "Getting device credential failed. "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v11}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 159
    .end local v11    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_7
    move-exception v13

    .line 160
    .local v13, "e":Ljava/lang/InterruptedException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v25, "Getting device credential failed. "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v13}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 178
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .local v6, "dc":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :cond_1
    :try_start_2
    const-string/jumbo v24, "fid"

    invoke-interface {v6}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->getFId()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_2 .. :try_end_2} :catch_8

    .line 183
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 184
    .local v4, "JSONIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 185
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 186
    .local v18, "k":Ljava/lang/String;
    const/16 v22, 0x0

    .line 188
    .local v22, "v":Ljava/lang/String;
    const-string/jumbo v24, "sign"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 193
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_9

    move-result-object v22

    .line 199
    .local v22, "v":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    .end local v4    # "JSONIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18    # "k":Ljava/lang/String;
    .end local v22    # "v":Ljava/lang/String;
    :catch_8
    move-exception v7

    .line 180
    .restart local v7    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v25, "MTService not available. "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24

    .line 194
    .end local v7    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    .restart local v4    # "JSONIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v18    # "k":Ljava/lang/String;
    .local v22, "v":Ljava/lang/String;
    :catch_9
    move-exception v15

    .line 195
    .restart local v15    # "e":Lorg/json/JSONException;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const-string/jumbo v25, "Key %s owns a value that can not be convert to a string. Ignore. "

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v18, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v24 .. v24}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    .end local v15    # "e":Lorg/json/JSONException;
    .end local v18    # "k":Ljava/lang/String;
    .end local v22    # "v":Ljava/lang/String;
    :cond_3
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v19, "signItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 204
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v24, "%s=%s"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v24, "&"

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 208
    .local v5, "contentToVerify":[B
    sget-object v24, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->getSignatureVerifierByType(Ljava/lang/Object;Ljava/util/Map;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Ljava/security/Signature;

    move-result-object v23

    .line 211
    .local v23, "verifier":Ljava/security/Signature;
    :try_start_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/security/Signature;->update([B)V

    .line 212
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 213
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const-string/jumbo v25, "Signature verified. "

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-static/range {v24 .. v24}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 214
    return-void

    .line 216
    :cond_5
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v25, "Signatures do not match. "

    invoke-direct/range {v24 .. v25}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_4
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_a

    .line 217
    :catch_a
    move-exception v14

    .line 218
    .local v14, "e":Ljava/security/SignatureException;
    new-instance v24, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v24
.end method


# virtual methods
.method public build(Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;
    .locals 31
    .param p1, "info"    # Landroid/os/Bundle;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "baseSeq"    # J
    .param p5, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    .param p6, "spub1"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .param p7, "spub2"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$SeqIsOldException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    .line 65
    const-string/jumbo v26, "android.intent.extra.finddevice.command"

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, "content":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 67
    new-instance v26, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    const-string/jumbo v27, "Null command content. "

    invoke-direct/range {v26 .. v27}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 77
    :cond_0
    const/4 v10, 0x0

    .line 78
    .local v10, "contentObj":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 80
    .local v6, "cipherPartObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 81
    .local v11, "contentObj":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v26, "version"

    .end local v10    # "contentObj":Lorg/json/JSONObject;
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 82
    .local v23, "version":I
    const-string/jumbo v26, "seqno"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 83
    .local v18, "seqno":J
    const-string/jumbo v26, "timestamp"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 84
    .local v20, "timestamp":J
    const-string/jumbo v26, "auto"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 86
    .local v16, "isAuto":Z
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .local v13, "dos":Ljava/io/DataOutputStream;
    :try_start_2
    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 90
    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    invoke-static {v13}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    .line 98
    .local v17, "iv":[B
    const-string/jumbo v26, "commandContent"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/xiaomi/finddevice/common/util/KeyTool;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 99
    .local v5, "cipherPartBin":[B
    if-nez v5, :cond_1

    .line 100
    new-instance v26, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Bad cipher part hex: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ". "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 114
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "cipherPartBin":[B
    .end local v13    # "dos":Ljava/io/DataOutputStream;
    .end local v16    # "isAuto":Z
    .end local v17    # "iv":[B
    .end local v18    # "seqno":J
    .end local v20    # "timestamp":J
    .end local v23    # "version":I
    :catch_0
    move-exception v15

    .local v15, "e":Lorg/json/JSONException;
    move-object v10, v11

    .line 115
    .end local v6    # "cipherPartObj":Lorg/json/JSONObject;
    .end local v11    # "contentObj":Lorg/json/JSONObject;
    :goto_0
    new-instance v26, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Bad command content: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ". "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v15}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26

    .line 91
    .end local v15    # "e":Lorg/json/JSONException;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "cipherPartObj":Lorg/json/JSONObject;
    .restart local v11    # "contentObj":Lorg/json/JSONObject;
    .restart local v13    # "dos":Ljava/io/DataOutputStream;
    .restart local v16    # "isAuto":Z
    .restart local v18    # "seqno":J
    .restart local v20    # "timestamp":J
    .restart local v23    # "version":I
    :catch_1
    move-exception v14

    .line 92
    .local v14, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v26, Ljava/lang/RuntimeException;

    const-string/jumbo v27, "Never happen. "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v26

    .line 94
    :try_start_5
    invoke-static {v13}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 93
    throw v26

    .line 102
    .restart local v5    # "cipherPartBin":[B
    .restart local v17    # "iv":[B
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v17

    invoke-virtual {v0, v5, v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->decodeCipherPart([BLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;[B)Ljava/io/DataInputStream;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v12

    .line 104
    .local v12, "dis":Ljava/io/DataInputStream;
    :try_start_6
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 108
    .end local v6    # "cipherPartObj":Lorg/json/JSONObject;
    .local v7, "cipherPartObj":Lorg/json/JSONObject;
    :try_start_7
    invoke-static {v12}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 111
    const-string/jumbo v26, "command"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 112
    .local v22, "type":Ljava/lang/String;
    const-string/jumbo v26, "userId"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-wide v24

    .line 118
    .local v24, "uidFromServer":J
    move-wide/from16 v0, p3

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->verifySeq(JJ)V

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->verifySignature(Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v26

    sget-object v27, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->buildEmptyCommandByType(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/Object;Ljava/util/Map;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v8

    .line 122
    .local v8, "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    invoke-virtual {v8, v11, v7}, Lcom/xiaomi/finddevice/v2/command/command/Command;->initWithPushData(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 123
    sget-object v26, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->V1:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    move-object/from16 v0, v26

    iput-object v0, v8, Lcom/xiaomi/finddevice/v2/command/command/Command;->version:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    .line 124
    move-wide/from16 v0, v18

    iput-wide v0, v8, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    .line 125
    move-wide/from16 v0, v20

    iput-wide v0, v8, Lcom/xiaomi/finddevice/v2/command/command/Command;->timestamp:J

    .line 127
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v8, Lcom/xiaomi/finddevice/v2/command/command/Command;->uid:Ljava/lang/String;

    .line 128
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const-string/jumbo v27, "server uid %s, local uid %s. "

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    iget-object v0, v8, Lcom/xiaomi/finddevice/v2/command/command/Command;->uid:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const/16 v29, 0x1

    aput-object p2, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    aput-object v27, v26, v28

    invoke-static/range {v26 .. v26}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 129
    move/from16 v0, v16

    iput-boolean v0, v8, Lcom/xiaomi/finddevice/v2/command/command/Command;->auto:Z

    .line 130
    const-string/jumbo v26, ""

    move-object/from16 v0, v26

    iput-object v0, v8, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfrom:Ljava/lang/String;

    .line 132
    iget-wide v0, v8, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-gez v26, :cond_2

    .line 133
    new-instance v26, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Bad seq: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-wide v0, v8, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ". "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 105
    .end local v7    # "cipherPartObj":Lorg/json/JSONObject;
    .end local v8    # "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    .end local v22    # "type":Ljava/lang/String;
    .end local v24    # "uidFromServer":J
    .restart local v6    # "cipherPartObj":Lorg/json/JSONObject;
    :catch_2
    move-exception v14

    .line 106
    .restart local v14    # "e":Ljava/io/IOException;
    :try_start_8
    new-instance v26, Ljava/lang/RuntimeException;

    const-string/jumbo v27, "Never happed. "

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 107
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v26

    .line 108
    :try_start_9
    invoke-static {v12}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 107
    throw v26
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    .line 136
    .end local v6    # "cipherPartObj":Lorg/json/JSONObject;
    .restart local v7    # "cipherPartObj":Lorg/json/JSONObject;
    .restart local v8    # "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    .restart local v22    # "type":Ljava/lang/String;
    .restart local v24    # "uidFromServer":J
    :cond_2
    return-object v8

    .line 114
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "cipherPartBin":[B
    .end local v7    # "cipherPartObj":Lorg/json/JSONObject;
    .end local v8    # "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    .end local v11    # "contentObj":Lorg/json/JSONObject;
    .end local v12    # "dis":Ljava/io/DataInputStream;
    .end local v13    # "dos":Ljava/io/DataOutputStream;
    .end local v16    # "isAuto":Z
    .end local v17    # "iv":[B
    .end local v18    # "seqno":J
    .end local v20    # "timestamp":J
    .end local v22    # "type":Ljava/lang/String;
    .end local v23    # "version":I
    .end local v24    # "uidFromServer":J
    .restart local v6    # "cipherPartObj":Lorg/json/JSONObject;
    .restart local v10    # "contentObj":Lorg/json/JSONObject;
    :catch_3
    move-exception v15

    .restart local v15    # "e":Lorg/json/JSONException;
    goto/16 :goto_0

    .end local v6    # "cipherPartObj":Lorg/json/JSONObject;
    .end local v10    # "contentObj":Lorg/json/JSONObject;
    .end local v15    # "e":Lorg/json/JSONException;
    .restart local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "cipherPartBin":[B
    .restart local v7    # "cipherPartObj":Lorg/json/JSONObject;
    .restart local v11    # "contentObj":Lorg/json/JSONObject;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v13    # "dos":Ljava/io/DataOutputStream;
    .restart local v16    # "isAuto":Z
    .restart local v17    # "iv":[B
    .restart local v18    # "seqno":J
    .restart local v20    # "timestamp":J
    .restart local v23    # "version":I
    :catch_4
    move-exception v15

    .restart local v15    # "e":Lorg/json/JSONException;
    move-object v6, v7

    .end local v7    # "cipherPartObj":Lorg/json/JSONObject;
    .local v6, "cipherPartObj":Lorg/json/JSONObject;
    move-object v10, v11

    .end local v11    # "contentObj":Lorg/json/JSONObject;
    .local v10, "contentObj":Lorg/json/JSONObject;
    goto/16 :goto_0
.end method
