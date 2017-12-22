.class public Lcom/xiaomi/account/utils/r;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mB:J

.field public final mC:I

.field public final mD:Ljava/lang/String;

.field public final mE:Z


# direct methods
.method private constructor <init>(ZIJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/xiaomi/account/utils/r;->mE:Z

    iput p2, p0, Lcom/xiaomi/account/utils/r;->mC:I

    iput-wide p3, p0, Lcom/xiaomi/account/utils/r;->mB:J

    iput-object p5, p0, Lcom/xiaomi/account/utils/r;->mD:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZIJLjava/lang/String;Lcom/xiaomi/account/utils/r;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/account/utils/r;-><init>(ZIJLjava/lang/String;)V

    return-void
.end method
