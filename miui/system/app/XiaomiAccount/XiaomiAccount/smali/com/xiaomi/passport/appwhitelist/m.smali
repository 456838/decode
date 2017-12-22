.class Lcom/xiaomi/passport/appwhitelist/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KZ:J


# instance fields
.field final La:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frequency"
    .end annotation
.end field

.field final Lb:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ms"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/passport/appwhitelist/m;->KZ:J

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/xiaomi/passport/appwhitelist/m;-><init>(IJ)V

    return-void
.end method

.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/passport/appwhitelist/m;->La:I

    iput-wide p2, p0, Lcom/xiaomi/passport/appwhitelist/m;->Lb:J

    return-void
.end method

.method public static Ov(Ljava/lang/String;)Lcom/xiaomi/passport/appwhitelist/m;
    .locals 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/xiaomi/passport/appwhitelist/m;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/appwhitelist/m;

    return-object v0
.end method


# virtual methods
.method Ou()Lcom/xiaomi/passport/appwhitelist/m;
    .locals 4

    new-instance v0, Lcom/xiaomi/passport/appwhitelist/m;

    iget v1, p0, Lcom/xiaomi/passport/appwhitelist/m;->La:I

    add-int/lit8 v1, v1, 0x1

    iget-wide v2, p0, Lcom/xiaomi/passport/appwhitelist/m;->Lb:J

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/appwhitelist/m;-><init>(IJ)V

    return-object v0
.end method

.method Ow()Z
    .locals 6

    iget-wide v0, p0, Lcom/xiaomi/passport/appwhitelist/m;->Lb:J

    sget-wide v2, Lcom/xiaomi/passport/appwhitelist/m;->KZ:J

    div-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/xiaomi/passport/appwhitelist/m;->KZ:J

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
