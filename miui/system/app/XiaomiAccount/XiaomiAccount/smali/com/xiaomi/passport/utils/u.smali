.class public Lcom/xiaomi/passport/utils/u;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AB:Ljava/lang/String;

.field public final AC:I

.field private final AD:Landroid/app/Activity;

.field private final AE:I

.field private final AF:I

.field private final AG:I

.field private final AH:I

.field public final AI:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/utils/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/passport/utils/v;->Fq(Lcom/xiaomi/passport/utils/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/utils/u;->AB:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/utils/v;->Fr(Lcom/xiaomi/passport/utils/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/utils/u;->AI:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/passport/utils/v;->Fp(Lcom/xiaomi/passport/utils/v;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/utils/u;->AC:I

    invoke-static {p1}, Lcom/xiaomi/passport/utils/v;->Fk(Lcom/xiaomi/passport/utils/v;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/utils/u;->AD:Landroid/app/Activity;

    invoke-static {p1}, Lcom/xiaomi/passport/utils/v;->Fo(Lcom/xiaomi/passport/utils/v;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/utils/u;->AH:I

    invoke-static {p1}, Lcom/xiaomi/passport/utils/v;->Fm(Lcom/xiaomi/passport/utils/v;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/utils/u;->AF:I

    invoke-static {p1}, Lcom/xiaomi/passport/utils/v;->Fn(Lcom/xiaomi/passport/utils/v;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/utils/u;->AG:I

    invoke-static {p1}, Lcom/xiaomi/passport/utils/v;->Fl(Lcom/xiaomi/passport/utils/v;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/passport/utils/u;->AE:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/utils/v;Lcom/xiaomi/passport/utils/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/utils/u;-><init>(Lcom/xiaomi/passport/utils/v;)V

    return-void
.end method


# virtual methods
.method EY()I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/xiaomi/passport/utils/u;->AI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/utils/u;->AI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/utils/u;->Fa(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/utils/u;->AB:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/utils/u;->AB:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/utils/u;->Fa(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method EZ(Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/ui/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/passport/utils/u;->AD:Landroid/app/Activity;

    iget v2, p0, Lcom/xiaomi/passport/utils/u;->AH:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/utils/u;->AD:Landroid/app/Activity;

    iget v2, p0, Lcom/xiaomi/passport/utils/u;->AF:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/passport/utils/u;->AG:I

    new-instance v2, Lcom/xiaomi/passport/utils/B;

    invoke-direct {v2, p0}, Lcom/xiaomi/passport/utils/B;-><init>(Lcom/xiaomi/passport/utils/u;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    iget v1, p0, Lcom/xiaomi/passport/utils/u;->AE:I

    new-instance v2, Lcom/xiaomi/passport/utils/C;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/utils/C;-><init>(Lcom/xiaomi/passport/utils/u;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xD(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/xiaomi/passport/utils/u;->AD:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "explainPermission"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/xiaomi/passport/utils/D;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/passport/utils/D;-><init>(Lcom/xiaomi/passport/utils/u;Lcom/xiaomi/passport/ui/C;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method Fa(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/utils/u;->AD:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method Fb()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/utils/u;->AD:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/utils/u;->AB:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/passport/utils/u;->AC:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
