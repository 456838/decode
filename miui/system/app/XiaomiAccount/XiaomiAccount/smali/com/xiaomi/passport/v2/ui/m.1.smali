.class public Lcom/xiaomi/passport/v2/ui/m;
.super Lcom/xiaomi/passport/v2/ui/c;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DH:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private DI:Landroid/widget/EditText;

.field private DJ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/c;-><init>()V

    return-void
.end method

.method public static Kv(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/m;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v1, "activator_phone_info"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/xiaomi/passport/v2/ui/m;

    invoke-direct {v1}, Lcom/xiaomi/passport/v2/ui/m;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/v2/ui/m;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p2}, Lcom/xiaomi/passport/v2/ui/m;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-object v1
.end method

.method private Kw()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/m;->DI:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/m;->DI:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/m;->DI:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/m;->DJ:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/m;->DI:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/m;->DI:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/xiaomi/passport/v2/ui/m;->DI:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v4

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/m;->DI:Landroid/widget/EditText;

    const v1, 0x7f0c0063

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/v2/ui/m;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/xiaomi/passport/v2/ui/m;->DI:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/xiaomi/passport/v2/ui/m;->DI:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private Kx()V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/s;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/s;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/m;->DH:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/s;->XQ(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/m;->pA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/s;->XS(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/s;->build()Lcom/xiaomi/accountsdk/account/data/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/m;->DJ:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/v2/ui/m;->IN(Lcom/xiaomi/accountsdk/account/data/r;Landroid/widget/TextView;)V

    return-void
.end method

.method private Ky()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/m;->Kw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/n;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/account/data/n;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/m;->DH:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/account/data/n;->Xn(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/n;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/m;->IC(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;)V

    return-void
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "InputActivatorPhoneVCode"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100067

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/m;->Ky()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f100066

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/m;->Kx()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/v2/ui/m;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "activator_phone_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/m;->DH:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const v0, 0x7f03001e

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100064

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c001a

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/v2/ui/m;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/passport/v2/ui/m;->DH:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v4, v4, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QM:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100065

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/m;->DI:Landroid/widget/EditText;

    const v0, 0x7f100066

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/v2/ui/m;->DJ:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/m;->DJ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100067

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0c0005

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/m;->DJ:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/v2/ui/m;->IJ(Landroid/widget/TextView;)V

    return-object v1
.end method
