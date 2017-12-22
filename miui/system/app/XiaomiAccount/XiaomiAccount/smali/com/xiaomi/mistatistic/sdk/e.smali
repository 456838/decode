.class public Lcom/xiaomi/mistatistic/sdk/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aiY:Z

.field private static aiZ:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/e;->aiY:Z

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/e;->aiZ:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->c:Z

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/e;->d:Z

    sput-boolean v1, Lcom/xiaomi/mistatistic/sdk/e;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atn()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->aiY:Z

    return v0
.end method

.method public static ato()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->aiZ:Z

    return v0
.end method

.method public static atp()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->c:Z

    return v0
.end method

.method public static atq()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->d:Z

    return v0
.end method

.method public static atr()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/mistatistic/sdk/e;->e:Z

    return v0
.end method
