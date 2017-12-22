.class public Lcom/xiaomi/account/ui/E;
.super Lcom/xiaomi/passport/ui/p;
.source ""


# instance fields
.field private bZ:Ljava/lang/String;

.field private ca:Ljava/lang/String;

.field private cb:Landroid/widget/Button;

.field private cc:Ljava/lang/String;

.field private cd:Landroid/widget/TextView;

.field private ce:Landroid/widget/TextView;

.field private cf:Ljava/lang/String;

.field private cg:Ljava/lang/String;

.field private ch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/p;-><init>()V

    return-void
.end method

.method public static eo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/account/ui/E;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "open_find_device_user_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_show_skip_login"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "find_device_display_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "lock_device_owner_phone"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "lock_device_prompt_message"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "acc_user_phone"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "acc_user_email"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/account/ui/E;

    invoke-direct {v1}, Lcom/xiaomi/account/ui/E;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/ui/E;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic er(Lcom/xiaomi/account/ui/E;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->cb:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected en()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/E;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->pL:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->pN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->pL:Landroid/widget/EditText;

    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/ui/E;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/account/ui/E;->ch:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/account/ui/E;->pO:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/account/ui/E;->pA:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/account/ui/E;->up(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "LockedAccountLoginByFindDeviceFragment"

    return-object v0
.end method

.method protected eq()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/ui/p;->eq()V

    const-string/jumbo v0, "login_success_by_open_find_device_account"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/E;->tS(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->cb:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "click_activate_account_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/E;->uq(Ljava/lang/String;)V

    const-string/jumbo v0, "click_login_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/E;->tS(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/E;->en()V

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/p;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/p;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/E;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "open_find_device_user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/E;->ch:Ljava/lang/String;

    const-string/jumbo v1, "find_device_display_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/E;->cc:Ljava/lang/String;

    const-string/jumbo v1, "acc_user_phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/E;->ca:Ljava/lang/String;

    const-string/jumbo v1, "acc_user_email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/E;->bZ:Ljava/lang/String;

    const-string/jumbo v1, "lock_device_owner_phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/account/ui/E;->cf:Ljava/lang/String;

    const-string/jumbo v1, "lock_device_prompt_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/E;->cg:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/E;->px:Z

    if-eqz v0, :cond_2

    const v0, 0x7f03000c

    :goto_0
    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f10001b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/E;->cd:Landroid/widget/TextView;

    const v0, 0x7f10001c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/E;->ce:Landroid/widget/TextView;

    const v0, 0x7f100082

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/account/ui/E;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/E;->px:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    :cond_0
    const v0, 0x7f100061

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/account/ui/E;->pL:Landroid/widget/EditText;

    const v0, 0x7f100062

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/E;->pM:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->pM:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10001f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/ui/E;->pN:Landroid/view/View;

    const v0, 0x7f100084

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/account/ui/E;->pK:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->pK:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/xiaomi/account/ui/E;->qa:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/ui/E;->uo(Z)V

    const v0, 0x7f10001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/account/ui/E;->cb:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->cb:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100021

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/account/ui/E;->cc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "N/A"

    :goto_1
    aput-object v1, v3, v4

    const v1, 0x7f0c018c

    invoke-virtual {p0, v1, v3}, Lcom/xiaomi/account/ui/E;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f100020

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/a;

    invoke-direct {v1}, Lcom/xiaomi/passport/v2/utils/a;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/E;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/account/ui/bq;

    invoke-direct {v4, p0}, Lcom/xiaomi/account/ui/bq;-><init>(Lcom/xiaomi/account/ui/E;)V

    invoke-virtual {v1, v3, v0, v4}, Lcom/xiaomi/passport/v2/utils/a;->Li(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v2

    :cond_2
    const v0, 0x7f030009

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/account/ui/E;->cc:Ljava/lang/String;

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->cd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->ch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Normally not reachable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->ch:Ljava/lang/String;

    const/4 v1, 0x3

    const/16 v2, 0x2a

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->ES(Ljava/lang/CharSequence;IC)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/E;->ca:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->ca:Ljava/lang/String;

    aput-object v0, v1, v4

    const v0, 0x7f0c018f

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/E;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/account/ui/E;->cd:Landroid/widget/TextView;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const v0, 0x7f0c018e

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/account/ui/E;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->cg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->cf:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->cg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->ce:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/account/ui/E;->cg:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f0c0189

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/account/ui/E;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/account/ui/E;->bZ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->bZ:Ljava/lang/String;

    aput-object v0, v1, v4

    const v0, 0x7f0c0190

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/account/ui/E;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->ce:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/account/ui/E;->cg:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/account/ui/E;->cf:Ljava/lang/String;

    aput-object v2, v1, v4

    const v2, 0x7f0c0187

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/account/ui/E;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->cf:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->ce:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/account/ui/E;->cf:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f0c0188

    invoke-virtual {p0, v2, v1}, Lcom/xiaomi/account/ui/E;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/account/ui/E;->ce:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
