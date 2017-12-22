.class public Lcom/xiaomi/passport/ui/o;
.super Lcom/xiaomi/passport/ui/p;
.source ""


# instance fields
.field private mUserId:Ljava/lang/String;

.field private pD:Z

.field private pE:Ljava/lang/String;

.field private pF:Z

.field private pG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/p;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/o;->pF:Z

    return-void
.end method

.method public static uk(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;ZLandroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/ui/o;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v1, "extra_user_id"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_username"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_ticket_token"

    iget-object v2, p1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->Qv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_phone"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_is_uplink_reg"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/xiaomi/passport/ui/o;

    invoke-direct {v1}, Lcom/xiaomi/passport/ui/o;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/o;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p4}, Lcom/xiaomi/passport/ui/o;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-object v1
.end method

.method private ul(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; domain = account.xiaomi.com; path=/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private um()V
    .locals 6

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/c;->VP:Ljava/lang/String;

    const-string/jumbo v2, "userId"

    iget-object v3, p0, Lcom/xiaomi/passport/ui/o;->mUserId:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/passport/ui/o;->ul(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/accountsdk/account/c;->VP:Ljava/lang/String;

    const-string/jumbo v2, "ticketToken"

    iget-object v3, p0, Lcom/xiaomi/passport/ui/o;->pP:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/passport/ui/o;->ul(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://account.xiaomi.com/pass/auth/resetPassword?user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/o;->pE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/o;->pA:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/xiaomi/passport/ui/o;->px:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/utils/o;->El(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/o;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected en()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pL:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pL:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/o;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pN:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pL:Landroid/widget/EditText;

    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/o;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/ui/o;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/passport/ui/o;->pO:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/passport/ui/o;->pA:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/passport/ui/o;->up(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "RegisteredNotRecycledPhoneLoginFragment"

    return-object v0
.end method

.method protected eq()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/ui/p;->eq()V

    const-string/jumbo v0, "login_success_by_registered_not_recycled_phone"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/o;->uq(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/passport/ui/p;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x100

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const-string/jumbo v0, "notification_auth_end"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;->userId:Ljava/lang/String;

    iget-object v2, v1, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;->Th:Ljava/lang/String;

    iget-object v3, v1, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;->Tf:Ljava/lang/String;

    iget-object v4, v1, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;->Tg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/passport/ui/o;->pP:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/o;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/ui/u;->vq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.account.action.XIAOMI_ACCOUNT_REG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/o;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/passport/ui/o;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pI:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "click_forgot_password_btn"

    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/o;->pD:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/o;->ug(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/o;->um()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/p;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/p;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/o;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/o;->mUserId:Ljava/lang/String;

    const-string/jumbo v1, "extra_username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/o;->pG:Ljava/lang/String;

    const-string/jumbo v1, "extra_phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/o;->pE:Ljava/lang/String;

    const-string/jumbo v1, "extra_is_uplink_reg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/o;->pD:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/o;->px:Z

    if-eqz v0, :cond_1

    const v0, 0x7f03003b

    :goto_0
    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10003b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/o;->pH:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pH:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10003a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/o;->pI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pI:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/o;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/o;->px:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v2, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    :cond_0
    const v0, 0x7f100084

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/o;->pK:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pK:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/o;->pF:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/o;->uo(Z)V

    const v0, 0x7f100061

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/o;->pL:Landroid/widget/EditText;

    const v0, 0x7f100062

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/o;->pM:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/o;->pM:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/o;->pN:Landroid/view/View;

    const v0, 0x7f10003f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/o;->mUserId:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0c0028

    invoke-virtual {p0, v3, v2}, Lcom/xiaomi/passport/ui/o;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f10003e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/passport/ui/o;->pG:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0c0029

    invoke-virtual {p0, v3, v2}, Lcom/xiaomi/passport/ui/o;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f10003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/o;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/ui/o;->mUserId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaomi/passport/utils/r;->EL(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_1
    const v0, 0x7f03004e

    goto/16 :goto_0
.end method

.method protected un()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/passport/ui/p;->un()V

    const-string/jumbo v0, "login_by_registered_not_recycled_phone"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/o;->uq(Ljava/lang/String;)V

    const-string/jumbo v0, "login_by_registered_not_recycled_phone"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/o;->tS(Ljava/lang/String;)V

    return-void
.end method
