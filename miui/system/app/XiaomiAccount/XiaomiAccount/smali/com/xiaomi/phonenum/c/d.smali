.class public Lcom/xiaomi/phonenum/c/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile aeI:J

.field private static volatile aeJ:J


# instance fields
.field public final aeC:Landroid/net/Network;

.field public final aeD:J

.field public final aeE:J

.field public final aeF:J

.field public final aeG:J

.field public final aeH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/xiaomi/phonenum/c/d;->aeI:J

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/xiaomi/phonenum/c/d;->aeJ:J

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/phonenum/c/i;)V
    .locals 4

    const-wide/16 v2, 0x3a98

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/i;->aeR:Landroid/net/Network;

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/d;->aeC:Landroid/net/Network;

    iget v0, p1, Lcom/xiaomi/phonenum/c/i;->aeS:I

    iput v0, p0, Lcom/xiaomi/phonenum/c/d;->aeH:I

    sget-wide v0, Lcom/xiaomi/phonenum/c/d;->aeI:J

    iput-wide v0, p0, Lcom/xiaomi/phonenum/c/d;->aeD:J

    sget-wide v0, Lcom/xiaomi/phonenum/c/d;->aeJ:J

    iput-wide v0, p0, Lcom/xiaomi/phonenum/c/d;->aeG:J

    iput-wide v2, p0, Lcom/xiaomi/phonenum/c/d;->aeE:J

    iput-wide v2, p0, Lcom/xiaomi/phonenum/c/d;->aeF:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/phonenum/c/i;Lcom/xiaomi/phonenum/c/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/c/d;-><init>(Lcom/xiaomi/phonenum/c/i;)V

    return-void
.end method

.method public static aoc(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/phonenum/c/d;->aeI:J

    return-void
.end method

.method public static aod(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/phonenum/c/d;->aeJ:J

    return-void
.end method
