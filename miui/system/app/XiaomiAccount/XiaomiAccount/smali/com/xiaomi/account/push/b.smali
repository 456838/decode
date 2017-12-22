.class public Lcom/xiaomi/account/push/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final nr:Ljava/lang/String;

.field private static final ns:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/accountsdk/account/b;->Vo:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://api.account.preview.n.xiaomi.net/xmpush"

    :goto_0
    sput-object v0, Lcom/xiaomi/account/push/b;->nr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/account/push/b;->nr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/safe/ticket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/push/b;->ns:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "https://api.account.xiaomi.com/xmpush"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pT(Lcom/xiaomi/passport/data/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "AccountPushContentProcessor"

    const-string/jumbo v1, "passport info is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/passport/data/c;->UX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/passport/data/c;->UV()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const-string/jumbo v0, "AccountPushContentProcessor"

    const-string/jumbo v1, "token is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    new-instance v1, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {p1}, Lcom/xiaomi/passport/data/c;->UY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahw(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahw(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string/jumbo v3, "serviceToken"

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahw(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v0

    const-string/jumbo v2, "cUserId"

    invoke-virtual {p1}, Lcom/xiaomi/passport/data/c;->UU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahw(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    move-result-object v2

    sget-object v0, Lcom/xiaomi/account/push/b;->ns:Ljava/lang/String;

    new-instance v5, Lcom/xiaomi/accountsdk/utils/C;

    invoke-direct {v5, v4}, Lcom/xiaomi/accountsdk/utils/C;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/accountsdk/request/w;->afu(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/p;)Lcom/xiaomi/accountsdk/request/g;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "AccountPushContentProcessor"

    const-string/jumbo v1, "response content is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v1, "response content is null"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/g;->aea(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "description"

    invoke-virtual {v1, v3}, Lcom/xiaomi/accountsdk/request/g;->aea(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AccountPushContentProcessor"

    invoke-static {v3, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_4
    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    invoke-direct {v0, v2}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/g;->aea(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/D;->aiV(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "ticket"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "AccountPushContentProcessor"

    const-string/jumbo v1, "fid error"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/account/push/AccountPushMessageProcessor$ServerFidErrorException;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/account/push/AccountPushMessageProcessor$ServerFidErrorException;-><init>(Lcom/xiaomi/account/push/b;Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x11181 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected pS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "passport_notify"

    invoke-static {p1, v0}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/xiaomi/account/push/b;->pT(Lcom/xiaomi/passport/data/c;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/push/AccountPushMessageProcessor$ServerFidErrorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "AccountPushContentProcessor"

    const-string/jumbo v2, "retry request"

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/account/push/b;->pT(Lcom/xiaomi/passport/data/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v1

    const-string/jumbo v1, "AccountPushContentProcessor"

    const-string/jumbo v2, "refresh auth token"

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/account/push/b;->pT(Lcom/xiaomi/passport/data/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pU(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/account/push/c;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "AccountPushContentProcessor"

    const-string/jumbo v2, "context is null"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AccountPushContentProcessor"

    const-string/jumbo v2, "empty push message"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "info"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v3, :cond_3

    const-string/jumbo v0, "AccountPushContentProcessor"

    const-string/jumbo v2, "message == null"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    const-string/jumbo v0, "AccountPushContentProcessor"

    const-string/jumbo v2, "type == null"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    sget-object v2, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;->nt:Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    invoke-virtual {v2}, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, v3}, Lcom/xiaomi/account/push/b;->pS(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/account/push/c;

    sget-object v3, Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;->nt:Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/account/push/c;-><init>(Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;Ljava/lang/String;)V

    return-object v2

    :cond_5
    const-string/jumbo v0, "AccountPushContentProcessor"

    const-string/jumbo v2, "not support the push type"

    invoke-static {v0, v2}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/push/AccountPushMessageProcessor$ServerFidErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AccountPushContentProcessor"

    const-string/jumbo v3, "process push content"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "AccountPushContentProcessor"

    const-string/jumbo v3, "process push content"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v2, "AccountPushContentProcessor"

    const-string/jumbo v3, "process push content"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string/jumbo v2, "AccountPushContentProcessor"

    const-string/jumbo v3, "process push content"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v2, "AccountPushContentProcessor"

    const-string/jumbo v3, "process push content"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_5
    move-exception v0

    const-string/jumbo v2, "AccountPushContentProcessor"

    const-string/jumbo v3, "process push content"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_6
    move-exception v0

    const-string/jumbo v2, "AccountPushContentProcessor"

    const-string/jumbo v3, "process push content"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
