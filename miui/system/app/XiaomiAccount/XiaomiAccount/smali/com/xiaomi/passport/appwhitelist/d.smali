.class Lcom/xiaomi/passport/appwhitelist/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Ob(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/B;->aiI()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    :cond_1
    return v0
.end method


# virtual methods
.method Oc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x1

    const-string/jumbo v1, "%s%s.%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "/data/system/xiaomiaccount/appWhiteList/inject/sid/"

    aput-object v3, v2, v4

    aput-object p1, v2, v0

    aput-object p2, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/passport/appwhitelist/d;->Ob(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "%s%s.%s"

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "/data/system/xiaomiaccount/appWhiteList/inject/sid/"

    aput-object v3, v2, v4

    aput-object p1, v2, v0

    const-string/jumbo v0, "any"

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/appwhitelist/d;->Ob(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method Od(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "/data/system/xiaomiaccount/appWhiteList/inject/signature/"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/appwhitelist/d;->Ob(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
