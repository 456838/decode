.class public Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;
.super Lcom/xiaomi/finddevice/v2/command/command/V1CommandFactory;
.source "V1SmsCommandFactory.java"


# static fields
.field private static final CMD_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
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
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    sput-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    .line 34
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/NoiseCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/LockCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/WipeCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/CloseCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/DeactiveCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-class v2, Lcom/xiaomi/finddevice/v2/command/command/LostCommand;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/V1CommandFactory;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private getCipherPartDecoder(Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;
    .locals 1
    .param p1, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    .prologue
    .line 226
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory$1;-><init>(Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V

    return-object v0
.end method

.method private preProcessSignature(Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;[B)[B
    .locals 1
    .param p1, "signatureKey"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .param p2, "signature"    # [B

    .prologue
    .line 238
    invoke-static {p2}, Lcom/xiaomi/finddevice/common/util/KeyTool;->nakedSignatureToStandardSignature([B)[B

    move-result-object v0

    return-object v0
.end method

.method private verifySignature([BLcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;SLjava/lang/String;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)V
    .locals 24
    .param p1, "contentBodyBin"    # [B
    .param p2, "deserializer"    # Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
    .param p3, "type"    # S
    .param p4, "commandUserId"    # Ljava/lang/String;
    .param p5, "spub1"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .param p6, "spub2"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static/range {p3 .. p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {v2, v3, v0, v1}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->getSignatureKeyByType(Ljava/lang/Object;Ljava/util/Map;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;

    move-result-object v4

    .line 152
    .local v4, "signatureKey":Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    invoke-static {v4}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->getSignatureVerifierByKey(Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Ljava/security/Signature;

    move-result-object v21

    .line 154
    .local v21, "verifier":Ljava/security/Signature;
    const/4 v8, 0x0

    .line 156
    .local v8, "dc":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/finddevice/v2/DeviceTypeBasedFactory;->getDeviceCredentialManager(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;

    move-result-object v2

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 156
    invoke-interface {v2, v3}, Lcom/xiaomi/finddevice/v2/IDeviceCredentialManager;->get(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 173
    .local v8, "dc":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    if-nez v8, :cond_0

    .line 174
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v3, "Null device credential. "

    invoke-direct {v2, v3}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    .local v8, "dc":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :catch_0
    move-exception v9

    .line 171
    .local v9, "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v3, "Getting device credential failed. "

    invoke-direct {v2, v3, v9}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 168
    .end local v9    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    :catch_1
    move-exception v15

    .line 169
    .local v15, "e":Ljava/io/IOException;
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v3, "Getting device credential failed. "

    invoke-direct {v2, v3, v15}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 166
    .end local v15    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v12

    .line 167
    .local v12, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v3, "Getting device credential failed. "

    invoke-direct {v2, v3, v12}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 164
    .end local v12    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;
    :catch_3
    move-exception v11

    .line 165
    .local v11, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v3, "Getting device credential failed. "

    invoke-direct {v2, v3, v11}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 162
    .end local v11    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;
    :catch_4
    move-exception v13

    .line 163
    .local v13, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v3, "Getting device credential failed. "

    invoke-direct {v2, v3, v13}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 160
    .end local v13    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;
    :catch_5
    move-exception v14

    .line 161
    .local v14, "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v3, "Getting device credential failed. "

    invoke-direct {v2, v3, v14}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 158
    .end local v14    # "e":Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;
    :catch_6
    move-exception v16

    .line 159
    .local v16, "e":Ljava/lang/InterruptedException;
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v3, "Getting device credential failed. "

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 176
    .end local v16    # "e":Ljava/lang/InterruptedException;
    .local v8, "dc":Lcom/xiaomi/finddevice/v2/IDeviceCredential;
    :cond_0
    const/4 v2, 0x0

    new-array v6, v2, [B

    .line 178
    .local v6, "fidBytes":[B
    :try_start_1
    invoke-interface {v8}, Lcom/xiaomi/finddevice/v2/IDeviceCredential;->getFId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v6

    .line 183
    invoke-static {}, Lmiui/telephony/CloudTelephonyManager;->getMultiSimCount()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 184
    .local v20, "simIds":[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Lmiui/telephony/CloudTelephonyManager;->getSimId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v20, v18

    .line 184
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 179
    .end local v18    # "i":I
    .end local v20    # "simIds":[Ljava/lang/String;
    :catch_7
    move-exception v9

    .line 180
    .restart local v9    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v3, "MTService not available. "

    invoke-direct {v2, v3, v9}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 187
    .end local v9    # "e":Lcom/xiaomi/finddevice/common/MTService$MTServiceNotAvailableException;
    .restart local v18    # "i":I
    .restart local v20    # "simIds":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "%s slot(s) here. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v5, v23

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 189
    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    .line 191
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Try to verify signature by the sim of slot %s. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v5, v23

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 192
    aget-object v2, v20, v18

    if-nez v2, :cond_2

    .line 193
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Sim id of slot %s is null. Abort. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v5, v23

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 189
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 197
    :cond_2
    aget-object v2, v20, v18

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .local v7, "simIdBytes":[B
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    .line 201
    :try_start_2
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;->deserializeSignatureVerificationInfo([BLcom/xiaomi/finddevice/v2/FindDevicePublicKey;Ljava/lang/String;[B[B)Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;

    move-result-object v19

    .line 204
    .local v19, "signatureVerificationInfo":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;->contentToVerify:[B

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/security/Signature;->update([B)V

    .line 206
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;->signature:[B

    .line 205
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->preProcessSignature(Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;[B)[B

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Signature verified by the sim of slot %s. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v5, v23

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 208
    return-void

    .line 211
    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Sim of slot %s: Signatures do not match. "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v5, v23

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_9

    goto :goto_2

    .line 213
    .end local v19    # "signatureVerificationInfo":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;
    :catch_8
    move-exception v10

    .line 214
    .local v10, "e":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to verify signature by the sim of slot %s . "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v5, v23

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 215
    .end local v10    # "e":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;
    :catch_9
    move-exception v17

    .line 216
    .local v17, "e":Ljava/security/SignatureException;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Failed to verify signature by the sim of slot %s . "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v5, v23

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object v17, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 220
    .end local v7    # "simIdBytes":[B
    .end local v17    # "e":Ljava/security/SignatureException;
    :cond_4
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v3, "All sims tried. Failed to verify the signature. "

    invoke-direct {v2, v3}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public build(Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;
    .locals 29
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
    .line 57
    const-string/jumbo v4, "android.intent.extra.finddevice.command"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 58
    .local v14, "content":Ljava/lang/String;
    if-nez v14, :cond_0

    .line 59
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    const-string/jumbo v7, "Null command content. "

    invoke-direct {v4, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_0
    const-string/jumbo v4, "mf"

    invoke-virtual {v14, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 63
    .local v21, "headerIndex":I
    if-gez v21, :cond_1

    .line 64
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Header not found: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ". "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_1
    const-string/jumbo v4, "#"

    invoke-virtual {v14, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 68
    .local v20, "footerIndex":I
    if-gez v20, :cond_2

    .line 69
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Footer not found: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ". "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_2
    sub-int v4, v20, v21

    const-string/jumbo v7, "mf"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v4, v7

    const/4 v7, 0x0

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 73
    .local v16, "contentBodyLen":I
    if-nez v16, :cond_3

    .line 74
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Null command body: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ". "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_3
    const-string/jumbo v4, "mf"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v21

    move/from16 v0, v20

    invoke-virtual {v14, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 83
    .local v15, "contentBody":Ljava/lang/String;
    invoke-static {v15}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 84
    .local v5, "contentBodyBin":[B
    invoke-static {v15}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, "SMSEncode":Ljava/lang/String;
    new-instance v17, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    .local v17, "contentBodyStream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readShort()S

    move-result v22

    .line 90
    .local v22, "version":S
    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_4

    .line 91
    const-string/jumbo v4, "FD-CHECK"

    const-string/jumbo v7, "SMSCDV1"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v6, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializerV1;

    invoke-direct {v6}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializerV1;-><init>()V

    .line 103
    .local v6, "deserializer":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->getCipherPartDecoder(Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;

    move-result-object v4

    .line 102
    move-object/from16 v0, v17

    invoke-virtual {v6, v5, v0, v4}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;->deserializeCommandInfo([BLjava/io/DataInputStream;Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;)Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 110
    .local v13, "commandInfo":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;
    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    iget-wide v0, v13, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->uid:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v4, v24, v26

    if-nez v4, :cond_6

    move-object/from16 v8, p2

    .line 114
    .local v8, "commandUserId":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "server uid %s, local uid %s, cmd uid %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 115
    iget-wide v0, v13, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->uid:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v23, 0x0

    aput-object v10, v9, v23

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object v8, v9, v10

    .line 114
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v4, v9

    invoke-static {v4}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 117
    iget-wide v0, v13, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->seqno:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, p3

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->verifySeq(JJ)V

    .line 118
    iget-short v7, v13, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->type:S

    move-object/from16 v4, p0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->verifySignature([BLcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;SLjava/lang/String;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-short v7, v13, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->type:S

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    sget-object v9, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->CMD_TYPE_MAP:Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-static {v4, v0, v7, v9}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->buildEmptyCommandByType(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/Object;Ljava/util/Map;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v12

    .line 121
    .local v12, "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    sget-object v4, Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;->V1:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    iput-object v4, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->version:Lcom/xiaomi/finddevice/v2/command/command/Command$VERSION;

    .line 122
    iget-wide v0, v13, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->seqno:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    iput-wide v0, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    .line 123
    iget-wide v0, v13, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->timestamp:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    iput-wide v0, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->timestamp:J

    .line 125
    iput-object v8, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->uid:Ljava/lang/String;

    .line 127
    iput-object v11, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSEncode:Ljava/lang/String;

    .line 128
    const-string/jumbo v4, "android.intent.extra.from_address"

    const-string/jumbo v7, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfrom:Ljava/lang/String;

    .line 129
    const-string/jumbo v4, "android.intent.extra.from_slotId"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSlotId:I

    .line 130
    const-string/jumbo v4, "android.intent.extra.from_subId"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->SMSfromSubId:I

    .line 132
    iget-wide v0, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v4, v24, v26

    if-gez v4, :cond_7

    .line 133
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bad seq: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v0, v12, Lcom/xiaomi/finddevice/v2/command/command/Command;->seq:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ". "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    .end local v6    # "deserializer":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
    .end local v8    # "commandUserId":Ljava/lang/String;
    .end local v12    # "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    .end local v13    # "commandInfo":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;
    :cond_4
    const/4 v4, 0x2

    move/from16 v0, v22

    if-ne v0, v4, :cond_5

    .line 94
    :try_start_1
    const-string/jumbo v4, "FD-CHECK"

    const-string/jumbo v7, "SMSCDV2"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v6, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializerV2;

    invoke-direct {v6}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializerV2;-><init>()V

    .restart local v6    # "deserializer":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
    goto/16 :goto_0

    .line 97
    .end local v6    # "deserializer":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
    :cond_5
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bad content: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ". "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 99
    const-string/jumbo v9, "Serialization version "

    .line 98
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 99
    const-string/jumbo v9, " not supported. "

    .line 98
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 97
    invoke-direct {v4, v7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v22    # "version":S
    :catch_0
    move-exception v19

    .line 106
    .local v19, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bad content: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ". "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-direct {v4, v7, v0}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .end local v19    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 110
    invoke-static/range {v17 .. v17}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 109
    throw v4

    .line 107
    :catch_1
    move-exception v18

    .line 108
    .local v18, "e":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;
    :try_start_3
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bad content: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ". "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-direct {v4, v7, v0}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .end local v18    # "e":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;
    .restart local v6    # "deserializer":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
    .restart local v13    # "commandInfo":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;
    .restart local v22    # "version":S
    :cond_6
    iget-wide v0, v13, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->uid:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "commandUserId":Ljava/lang/String;
    goto/16 :goto_1

    .line 136
    .restart local v12    # "cmd":Lcom/xiaomi/finddevice/v2/command/command/Command;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/xiaomi/finddevice/common/util/ErrorUtil;->handleBuildSMSCommandTelephonyError(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/command/command/Command;)V

    .line 138
    return-object v12
.end method
