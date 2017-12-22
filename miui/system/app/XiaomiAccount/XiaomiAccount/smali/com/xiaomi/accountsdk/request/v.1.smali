.class public Lcom/xiaomi/accountsdk/request/v;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Ys:J

.field private static Yt:J

.field private static Yu:J

.field private static Yv:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yt:J

    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lcom/xiaomi/accountsdk/request/v;->Ys:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yu:J

    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yv:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static afj()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yu:J

    return-wide v0
.end method

.method static afk()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yv:J

    return-wide v0
.end method

.method static afl()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yt:J

    return-wide v0
.end method

.method static afm()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/accountsdk/request/v;->Ys:J

    return-wide v0
.end method

.method static afn(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/accountsdk/request/v;->Yt:J

    return-void
.end method

.method static afo(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/accountsdk/request/v;->Ys:J

    return-void
.end method

.method static afp(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/accountsdk/request/v;->Yu:J

    return-void
.end method

.method static afq(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/accountsdk/request/v;->Yv:J

    return-void
.end method

.method public static afr(Lcom/xiaomi/accountsdk/request/a;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yt:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/a;->Pg(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yt:J

    sget-wide v0, Lcom/xiaomi/accountsdk/request/v;->Ys:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/a;->Pe(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/v;->Ys:J

    sget-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yu:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/a;->Ph(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yu:J

    sget-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yv:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/a;->Pi(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/v;->Yv:J

    :cond_0
    return-void
.end method
