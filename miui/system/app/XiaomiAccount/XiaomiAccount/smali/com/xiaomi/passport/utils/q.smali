.class public final Lcom/xiaomi/passport/utils/q;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Av:Landroid/app/Activity;

.field private Aw:I

.field private Ax:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic Ev(Lcom/xiaomi/passport/utils/q;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/q;->Av:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic Ew(Lcom/xiaomi/passport/utils/q;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/utils/q;->Aw:I

    return v0
.end method

.method static synthetic Ex(Lcom/xiaomi/passport/utils/q;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/q;->Ax:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public Es(Landroid/app/Activity;)Lcom/xiaomi/passport/utils/q;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/q;->Av:Landroid/app/Activity;

    return-object p0
.end method

.method public Et(I)Lcom/xiaomi/passport/utils/q;
    .locals 0

    iput p1, p0, Lcom/xiaomi/passport/utils/q;->Aw:I

    return-object p0
.end method

.method public Eu(Ljava/lang/Runnable;)Lcom/xiaomi/passport/utils/q;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/utils/q;->Ax:Ljava/lang/Runnable;

    return-object p0
.end method

.method public build()Lcom/xiaomi/passport/utils/p;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/utils/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/utils/p;-><init>(Lcom/xiaomi/passport/utils/q;Lcom/xiaomi/passport/utils/p;)V

    return-object v0
.end method
