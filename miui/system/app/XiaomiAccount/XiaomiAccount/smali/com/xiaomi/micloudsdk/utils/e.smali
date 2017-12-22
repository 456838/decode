.class public Lcom/xiaomi/micloudsdk/utils/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static agg:Z

.field private static agh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/micloudsdk/utils/e;->agh:Z

    sput-boolean v0, Lcom/xiaomi/micloudsdk/utils/e;->agg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apP(Ljava/lang/String;JJI)V
    .locals 7

    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/e;->agh:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/micloudsdk/utils/e;->agg:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/a;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Ljava/lang/String;JJI)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->atm(Lcom/xiaomi/mistatistic/sdk/data/a;)V

    return-void

    :cond_0
    return-void
.end method
