.class Lcom/xiaomi/accountsdk/request/A;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final YF:Lcom/xiaomi/accountsdk/request/A;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/request/A;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/A;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/A;->YF:Lcom/xiaomi/accountsdk/request/A;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static afV()Lcom/xiaomi/accountsdk/request/A;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/request/A;->YF:Lcom/xiaomi/accountsdk/request/A;

    return-object v0
.end method


# virtual methods
.method afW(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/A;->afZ(Ljavax/net/ssl/HttpsURLConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/L;->ajx()Lcom/xiaomi/accountsdk/utils/L;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acG()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/L;->ajl(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method afX(Lcom/xiaomi/accountsdk/request/f;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/A;->afY(Lcom/xiaomi/accountsdk/request/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/L;->ajx()Lcom/xiaomi/accountsdk/utils/L;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->acG()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/L;->ajl(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method afY(Lcom/xiaomi/accountsdk/request/f;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/f;->adS()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "SUML"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "SUML"

    invoke-virtual {p1, v1}, Lcom/xiaomi/accountsdk/request/f;->adT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method afZ(Ljavax/net/ssl/HttpsURLConnection;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    new-instance v3, Ljava/net/CookieManager;

    invoke-direct {v3}, Ljava/net/CookieManager;-><init>()V

    invoke-virtual {v3, v0, v2}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/b;->adB(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "SUML"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "SUML"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    return v1

    :catch_1
    move-exception v0

    return v1
.end method
