.class Lcom/xiaomi/passport/appwhitelist/n;
.super Lcom/xiaomi/passport/appwhitelist/o;
.source ""


# static fields
.field static final Ld:Lcom/xiaomi/passport/appwhitelist/n;


# instance fields
.field private final Lc:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/n;

    invoke-direct {v0}, Lcom/xiaomi/passport/appwhitelist/n;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/appwhitelist/n;->Ld:Lcom/xiaomi/passport/appwhitelist/n;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/appwhitelist/o;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/appwhitelist/n;->Lc:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method OA(J)V
    .locals 1

    const-string/jumbo v0, "updateTime"

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/passport/appwhitelist/n;->OE(Ljava/lang/String;J)V

    return-void
.end method

.method Ox()Lcom/xiaomi/passport/appwhitelist/a/c;
    .locals 3

    const-string/jumbo v0, "appWhiteList"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/appwhitelist/n;->OC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/appwhitelist/n;->Lc:Lcom/google/gson/Gson;

    const-class v2, Lcom/xiaomi/passport/appwhitelist/a/c;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/appwhitelist/a/c;

    return-object v0
.end method

.method Oy()J
    .locals 4

    const-string/jumbo v0, "updateTime"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/passport/appwhitelist/n;->OD(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method Oz(Lcom/xiaomi/passport/appwhitelist/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/appwhitelist/n;->Lc:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "appWhiteList"

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/passport/appwhitelist/n;->OB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
