.class public Lcom/xiaomi/passport/ui/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private pd:Lcom/xiaomi/passport/widget/e;

.field private final pe:Lcom/xiaomi/passport/ui/i;

.field private final pf:Landroid/app/Activity;

.field private pg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/xiaomi/passport/ui/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/h;->pf:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/h;->pe:Lcom/xiaomi/passport/ui/i;

    return-void
.end method

.method private tj()Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0

    :cond_0
    return-object v1
.end method

.method private to(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/passport/ui/W;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/W;-><init>(Lcom/xiaomi/passport/ui/h;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/W;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    const-string/jumbo v0, "CaptchaDialogController"

    const-string/jumbo v1, "updateCaptchaImageAsync() is called when dialog is not showing -- unexpected call in this case."

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahg(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic tp(Lcom/xiaomi/passport/ui/h;)Lcom/xiaomi/passport/widget/e;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    return-object v0
.end method

.method static synthetic tq(Lcom/xiaomi/passport/ui/h;)Lcom/xiaomi/passport/ui/i;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pe:Lcom/xiaomi/passport/ui/i;

    return-object v0
.end method

.method static synthetic tr(Lcom/xiaomi/passport/ui/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pf:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic ts(Lcom/xiaomi/passport/ui/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic tt(Lcom/xiaomi/passport/ui/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/h;->pg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic tu(Lcom/xiaomi/passport/ui/h;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/h;->tj()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic tv(Lcom/xiaomi/passport/ui/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/h;->to(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->dismiss()V

    :cond_0
    return-void
.end method

.method public ti()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/h;->tj()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public tk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pg:Ljava/lang/String;

    return-object v0
.end method

.method public tl()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    invoke-virtual {v1}, Lcom/xiaomi/passport/widget/e;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public tm()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/h;->tn(Ljava/lang/String;)V

    return-void
.end method

.method public tn(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pf:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pf:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/h;->tj()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/h;->pf:Landroid/app/Activity;

    const v2, 0x7f0c008d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/h;->to(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pf:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/ui/U;

    invoke-direct {v2, p0, p1}, Lcom/xiaomi/passport/ui/U;-><init>(Lcom/xiaomi/passport/ui/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/xiaomi/passport/widget/f;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/h;->pf:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0055

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/widget/f;->setTitle(I)Lcom/xiaomi/passport/widget/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/widget/f;->zB(Landroid/view/View;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/passport/widget/f;->zA(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/passport/widget/f;->zx(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/f;->zC()Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/h;->pd:Lcom/xiaomi/passport/widget/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/e;->zp(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/V;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/V;-><init>(Lcom/xiaomi/passport/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
