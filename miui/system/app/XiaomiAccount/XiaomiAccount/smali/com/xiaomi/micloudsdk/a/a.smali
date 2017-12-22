.class public Lcom/xiaomi/micloudsdk/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static afH:Landroid/content/Context;

.field private static afI:Ljava/lang/String;

.field private static afJ:Lcom/xiaomi/micloudsdk/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/micloudsdk/a/c;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/a/c;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/a/a;->afJ:Lcom/xiaomi/micloudsdk/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aoO(Ljava/lang/String;Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-wide/32 v4, 0x493e0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/a/a;->aoS(Ljava/lang/String;Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Request"

    const-string/jumbo v2, "requestServer error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Request"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestServer error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->apQ()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->apQ()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_0
    new-instance v0, Lcom/xiaomi/opensdk/exception/AuthenticationException;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/exception/AuthenticationException;-><init>()V

    throw v0

    :sswitch_1
    new-instance v1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4, v5}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw v1

    :sswitch_2
    new-instance v1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->retryTime:I

    int-to-long v4, v0

    invoke-direct {v1, v2, v4, v5}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw v1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "Request"

    const-string/jumbo v2, "requestServer error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/xiaomi/opensdk/exception/RetriableException;->apV(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/xiaomi/opensdk/exception/RetriableException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4, v5}, Lcom/xiaomi/opensdk/exception/RetriableException;-><init>(Ljava/lang/String;J)V

    throw v1

    :cond_0
    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    const-string/jumbo v1, "Request"

    const-string/jumbo v2, "requestServer error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    const-string/jumbo v1, "Request"

    const-string/jumbo v2, "requestServer error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    const-string/jumbo v1, "Request"

    const-string/jumbo v2, "requestServer error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    const-string/jumbo v1, "Request"

    const-string/jumbo v2, "requestServer error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/opensdk/exception/UnretriableException;

    invoke-direct {v1, v0}, Lcom/xiaomi/opensdk/exception/UnretriableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x193 -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x1f7 -> :sswitch_2
    .end sparse-switch
.end method

.method private static aoP(Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/utils/a;->apu(Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "signature"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static aoQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/micloudsdk/utils/c;->afY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/c;->apz(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static aoR(Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/utils/p;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "_nonce"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    :goto_2
    invoke-interface {p0, v0}, Lcom/xiaomi/accountsdk/utils/p;->aid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "_nonce"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_4
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v2
.end method

.method private static aoS(Ljava/lang/String;Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/a/a;->aoQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, ""

    invoke-static {v4}, Lcom/xiaomi/micloudsdk/a/d;->apr(Ljava/lang/String;)Z

    move-result v5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v3, v0, :cond_8

    invoke-static {}, Lcom/xiaomi/micloudsdk/a/a;->aoY()Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v2

    iget-object v0, v2, Lcom/xiaomi/accountsdk/account/data/u;->SX:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/xiaomi/micloudsdk/a/d;->apk(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/utils/p;

    move-result-object v6

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/h;->ahy()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    :try_start_1
    invoke-static {v6, v0, p2}, Lcom/xiaomi/micloudsdk/a/a;->aoR(Lcom/xiaomi/accountsdk/utils/p;Ljava/lang/String;Ljava/util/Map;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    :try_start_2
    iget-object v0, v2, Lcom/xiaomi/accountsdk/account/data/u;->SX:Ljava/lang/String;

    invoke-static {p1, v4, v7, v0}, Lcom/xiaomi/micloudsdk/a/a;->aoP(Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/micloudsdk/a/a;->afJ:Lcom/xiaomi/micloudsdk/a/b;

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/a/b;->apc()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/xiaomi/micloudsdk/a/a;->afJ:Lcom/xiaomi/micloudsdk/a/b;

    invoke-interface {v8}, Lcom/xiaomi/micloudsdk/a/b;->apg()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v2, Lcom/xiaomi/accountsdk/account/data/u;->SW:Ljava/lang/String;

    invoke-static {v0, v8, v2, p3}, Lcom/xiaomi/micloudsdk/a/a;->aoU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/Header;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    :try_start_3
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;->afQ:Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;

    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4, v7}, Lcom/xiaomi/micloudsdk/utils/a;->aps(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8, v6}, Lcom/xiaomi/micloudsdk/a/d;->apm(Ljava/lang/String;Lorg/apache/http/Header;Lcom/xiaomi/accountsdk/utils/p;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :goto_2
    :try_start_4
    invoke-static {}, Lcom/xiaomi/micloudsdk/a/a;->aoT()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/micloudsdk/utils/d;->apO(Landroid/content/Context;Z)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Micloud"

    const-string/jumbo v2, "CipherException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/CipherException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/xiaomi/micloudsdk/a/a;->aoT()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/micloudsdk/utils/d;->apO(Landroid/content/Context;Z)V

    throw v0

    :cond_1
    :try_start_5
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;->afP:Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;

    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v7, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v4, v0, v8, v6}, Lcom/xiaomi/micloudsdk/a/d;->app(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;Lorg/apache/http/Header;Lcom/xiaomi/accountsdk/utils/p;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;->afR:Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;

    invoke-virtual {v0, p1}, Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    :try_start_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_7
    new-instance v2, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-direct {v2, v6, v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_7
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_3
    move-exception v0

    :try_start_8
    const-string/jumbo v2, "Micloud"

    const-string/jumbo v6, "CloudServer Exception: "

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->apQ()I

    move-result v2

    const/16 v6, 0x191

    if-ne v2, v6, :cond_7

    if-nez v3, :cond_6

    const-string/jumbo v2, "Micloud"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CloudServer 401 Exception: retry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v2, Lcom/xiaomi/micloudsdk/a/a;->afJ:Lcom/xiaomi/micloudsdk/a/b;

    invoke-interface {v2}, Lcom/xiaomi/micloudsdk/a/b;->ape()V

    iget-wide v6, v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->serverDate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/xiaomi/accountsdk/account/e;->acL(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_4
    :try_start_9
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "utf-8"

    invoke-direct {v0, v2, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v0, v8, v6}, Lcom/xiaomi/micloudsdk/a/d;->apn(Ljava/lang/String;Lorg/apache/http/entity/StringEntity;Lorg/apache/http/Header;Lcom/xiaomi/accountsdk/utils/p;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "http method not supported."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_6
    const/4 v2, 0x1

    if-ne v3, v2, :cond_3

    :try_start_a
    const-string/jumbo v1, "Micloud"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CloudServer 401 Exception: retry="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :cond_7
    invoke-static {}, Lcom/xiaomi/micloudsdk/a/a;->aoT()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/micloudsdk/utils/c;->apy(Landroid/content/Context;Lcom/xiaomi/micloudsdk/exception/CloudServerException;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static aoT()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/xiaomi/micloudsdk/a/a;->afH:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sContext=null! Please call Request.init(Context) at Application onCreate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/micloudsdk/a/a;->afH:Landroid/content/Context;

    return-object v0
.end method

.method private static aoU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/Header;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/Header;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "serviceToken="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "; cUserId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "cUserId"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "userId"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "serviceToken"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "; userId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "Cookie"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static aoV()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/micloudsdk/a/a;->afI:Ljava/lang/String;

    return-object v0
.end method

.method public static aoW()Lcom/xiaomi/micloudsdk/a/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/micloudsdk/a/a;->afJ:Lcom/xiaomi/micloudsdk/a/b;

    return-object v0
.end method

.method public static aoX(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/micloudsdk/a/a;->afH:Landroid/content/Context;

    return-void
.end method

.method public static aoY()Lcom/xiaomi/accountsdk/account/data/u;
    .locals 3

    sget-object v0, Lcom/xiaomi/micloudsdk/a/a;->afJ:Lcom/xiaomi/micloudsdk/a/b;

    invoke-interface {v0}, Lcom/xiaomi/micloudsdk/a/b;->apf()Lcom/xiaomi/accountsdk/account/data/u;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;

    const-string/jumbo v1, "execute() : queryAuthToken == null"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static aoZ(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/a/a;->apa(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apa(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;->afP:Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/micloudsdk/a/a;->aoS(Ljava/lang/String;Lcom/xiaomi/micloudsdk/utils/NetworkUtils$HttpMethod;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apb(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/micloudsdk/a/a;->afI:Ljava/lang/String;

    return-void
.end method
