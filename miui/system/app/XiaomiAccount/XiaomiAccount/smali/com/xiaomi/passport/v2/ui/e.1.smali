.class public Lcom/xiaomi/passport/v2/ui/e;
.super Lcom/xiaomi/passport/ui/l;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private CT:Lcom/xiaomi/passport/ui/PassportGroupEditText;

.field private CU:Z

.field private CV:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/l;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CU:Z

    return-void
.end method

.method private Jm()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CT:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CT:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/v2/ui/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/passport/utils/r;->EK(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CT:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0061

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/v2/ui/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method private Jn()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CT:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/e;->CV:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/xiaomi/passport/v2/ui/e;->CU:Z

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/e;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/r;->EJ(Lcom/xiaomi/passport/ui/PassportGroupEditText;Landroid/widget/ImageView;ZLandroid/content/res/Resources;)V

    return-void
.end method

.method private Jo()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/e;->Jm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/v2/ui/f;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/f;->ah(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SetPasswordFragment"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100069

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/e;->Jo()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f100084

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CU:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CU:Z

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/e;->Jn()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const v0, 0x7f030020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f100069

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0c00b4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c00b3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f100082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CT:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CT:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v2, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    const v0, 0x7f100084

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CV:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/e;->CV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/e;->Jn()V

    return-object v1
.end method

.method protected te()I
    .locals 1

    const v0, 0x7f0c00b2

    return v0
.end method
