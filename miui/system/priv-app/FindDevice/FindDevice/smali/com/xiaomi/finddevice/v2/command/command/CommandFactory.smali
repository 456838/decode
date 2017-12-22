.class public abstract Lcom/xiaomi/finddevice/v2/command/command/CommandFactory;
.super Ljava/lang/Object;
.source "CommandFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;,
        Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;,
        Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$SeqIsOldException;,
        Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
    }
.end annotation


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory;->mCtx:Landroid/content/Context;

    .line 194
    return-void
.end method

.method public static buildCommand(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
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
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    .line 86
    const-string/jumbo v1, "android.intent.extra.finddevice.command_type"

    const-string/jumbo v2, "N/A"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "cmdType":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 88
    const-string/jumbo v1, "push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static/range {p0 .. p7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory;->buildPushCommand(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v1

    return-object v1

    .line 90
    :cond_0
    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-static/range {p0 .. p7}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory;->buildSmsCommand(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v1

    return-object v1

    .line 94
    :cond_1
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    const-string/jumbo v2, "Null or bad command type. "

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static buildEmptyCommandByType(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/Object;Ljava/util/Map;)Lcom/xiaomi/finddevice/v2/command/command/Command;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;",
            "TT;",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/xiaomi/finddevice/v2/command/command/Command;",
            ">;>;)",
            "Lcom/xiaomi/finddevice/v2/command/command/Command;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "type":Ljava/lang/Object;, "TT;"
    .local p3, "cmdTypeMap":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/Class<+Lcom/xiaomi/finddevice/v2/command/command/Command;>;>;"
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 166
    .local v6, "msgCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaomi/finddevice/v2/command/command/Command;>;"
    if-nez v6, :cond_0

    .line 167
    new-instance v7, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Msg type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not recognized. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-direct {v7, v8}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 173
    :cond_0
    const/4 v7, 0x2

    :try_start_0
    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 174
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/xiaomi/finddevice/v2/command/command/Command;>;"
    new-instance v7, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;

    invoke-direct {v7, p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;-><init>(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;)V

    .line 175
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/finddevice/v2/command/command/Command;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 185
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/xiaomi/finddevice/v2/command/command/Command;>;"
    :catch_0
    move-exception v5

    .line 186
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can not instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 183
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can not instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 181
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 182
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can not instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 179
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can not instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 177
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can not instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static buildPushCommand(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
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
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    .line 125
    const-string/jumbo v1, "android.intent.extra.finddevice.command"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "content":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 127
    if-nez v0, :cond_0

    .line 128
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    const-string/jumbo v2, "Null push cmd content. "

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_0
    const/4 v9, 0x0

    .line 133
    .local v9, "contentObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    .end local v9    # "contentObj":Lorg/json/JSONObject;
    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .local v9, "contentObj":Lorg/json/JSONObject;
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 139
    .local v11, "version":I
    if-nez v11, :cond_1

    .line 140
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "V0 push check. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 141
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;-><init>(Landroid/content/Context;)V

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/finddevice/v2/command/command/V0PushCommandFactory;->build(Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v1

    return-object v1

    .line 134
    .end local v9    # "contentObj":Lorg/json/JSONObject;
    .end local v11    # "version":I
    :catch_0
    move-exception v10

    .line 135
    .local v10, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    const-string/jumbo v2, "Bad push cmd content. "

    invoke-direct {v1, v2, v10}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 142
    .end local v10    # "e":Lorg/json/JSONException;
    .restart local v9    # "contentObj":Lorg/json/JSONObject;
    .restart local v11    # "version":I
    :cond_1
    const/4 v1, 0x1

    if-eq v11, v1, :cond_2

    const/4 v1, 0x2

    if-ne v11, v1, :cond_3

    .line 143
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "V1 push check. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 144
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;-><init>(Landroid/content/Context;)V

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/finddevice/v2/command/command/V1PushCommandFactory;->build(Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v1

    return-object v1

    .line 147
    :cond_3
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t determine the push command version from the content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    const-string/jumbo v3, ".  "

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static buildSmsCommand(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
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
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    .line 101
    const-string/jumbo v1, "android.intent.extra.finddevice.command"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "content":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 103
    if-nez v0, :cond_0

    .line 104
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    const-string/jumbo v2, "Null sms cmd content. "

    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    const-string/jumbo v1, "mfc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 108
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "V0 sms check. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 109
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;-><init>(Landroid/content/Context;)V

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/finddevice/v2/command/command/V0SmsCommandFactory;->build(Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v1

    return-object v1

    .line 110
    :cond_1
    const-string/jumbo v1, "mf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 111
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "V1 sms check. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 112
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;

    invoke-direct {v1, p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;-><init>(Landroid/content/Context;)V

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandFactory;->build(Landroid/os/Bundle;Ljava/lang/String;JLcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;)Lcom/xiaomi/finddevice/v2/command/command/Command;

    move-result-object v1

    return-object v1

    .line 115
    :cond_2
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t determine the SMS command version from the content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 117
    const-string/jumbo v3, ".  "

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static verifySeq(JJ)V
    .locals 6
    .param p0, "baseSeq"    # J
    .param p2, "cmdSeq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$SeqIsOldException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "baseSeq: %s, cmdSeq: %s. "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 156
    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    .line 157
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$SeqIsOldException;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$SeqIsOldException;-><init>()V

    throw v0

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory;->mCtx:Landroid/content/Context;

    return-object v0
.end method
