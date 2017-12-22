.class public Lcom/xiaomi/passport/ui/u;
.super Lcom/xiaomi/passport/v2/ui/c;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mUserId:Ljava/lang/String;

.field private qJ:Lcom/xiaomi/passport/task/a;

.field private qK:Landroid/widget/Button;

.field private qL:Landroid/widget/Button;

.field private qM:Ljava/lang/String;

.field private qN:Ljava/lang/String;

.field private qO:Ljava/lang/String;

.field private qP:Z

.field private qQ:Ljava/lang/String;

.field private qR:Landroid/widget/TextView;

.field private qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

.field private qT:Landroid/widget/TextView;

.field private qU:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

.field private qV:Lcom/xiaomi/passport/task/i;

.field private qW:Lcom/xiaomi/passport/RegisterType;

.field private qX:Lcom/xiaomi/passport/ui/v;

.field private qY:Z

.field private qZ:Landroid/widget/ImageView;

.field private ra:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/v2/ui/c;-><init>()V

    sget-object v0, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/u;->qW:Lcom/xiaomi/passport/RegisterType;

    return-void
.end method

.method private vA()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qW:Lcom/xiaomi/passport/RegisterType;

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/u;->qP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "upLink_use_auto_generate_pwd"

    :goto_0
    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/u;->qP:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/u;->ug(Ljava/lang/String;Z)V

    const-string/jumbo v0, "use_auto_generate_pwd"

    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/u;->qP:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/u;->ug(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "downLink_use_auto_generate_pwd"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "use_auto_generate_reset_pwd_btn"

    goto :goto_0
.end method

.method private vB()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qT:Landroid/widget/TextView;

    sget-object v1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vA:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/ui/u;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qR:Landroid/widget/TextView;

    sget-object v1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vx:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/ui/u;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qK:Landroid/widget/Button;

    sget-object v1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vr:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/ui/u;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    return-void
.end method

.method private vC()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/u;->qZ:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/xiaomi/passport/ui/u;->qY:Z

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/u;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/passport/utils/r;->EJ(Lcom/xiaomi/passport/ui/PassportGroupEditText;Landroid/widget/ImageView;ZLandroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic vD(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic vE(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic vF(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic vG(Lcom/xiaomi/passport/ui/u;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/u;->qP:Z

    return v0
.end method

.method static synthetic vH(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic vI(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->ra:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic vJ(Lcom/xiaomi/passport/ui/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic vK(Lcom/xiaomi/passport/ui/u;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/u;->vr()Z

    move-result v0

    return v0
.end method

.method static synthetic vL(Lcom/xiaomi/passport/ui/u;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/u;->vs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic vM(Lcom/xiaomi/passport/ui/u;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/u;->vx(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic vN(Lcom/xiaomi/passport/ui/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/u;->vA()V

    return-void
.end method

.method public static vp(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/ui/u;
    .locals 4

    new-instance v0, Lcom/xiaomi/passport/ui/u;

    invoke-direct {v0}, Lcom/xiaomi/passport/ui/u;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v2, "masked_phone_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "activator_phone_register_params"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "register_type_index"

    sget-object v3, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    invoke-virtual {v3}, Lcom/xiaomi/passport/RegisterType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/u;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/passport/ui/u;->tQ(Lcom/xiaomi/passport/ui/m;)V

    return-object v0
.end method

.method public static vq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string/jumbo v1, "extra_user_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_ticket_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_identity_auth_token"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_identity_post_hint"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "extra_identity_slh"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "register_type_index"

    sget-object v2, Lcom/xiaomi/passport/RegisterType;->Lx:Lcom/xiaomi/passport/RegisterType;

    invoke-virtual {v2}, Lcom/xiaomi/passport/RegisterType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private vr()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/passport/utils/r;->EK(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0061

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private vs(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qW:Lcom/xiaomi/passport/RegisterType;

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/u;->vv(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qW:Lcom/xiaomi/passport/RegisterType;

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Lx:Lcom/xiaomi/passport/RegisterType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/u;->vw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private vt()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qJ:Lcom/xiaomi/passport/task/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qJ:Lcom/xiaomi/passport/task/a;

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "InputRegisterPasswordFr"

    const-string/jumbo v1, "generate pwd task is running"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahe(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/passport/task/b;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/task/b;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/xiaomi/passport/ui/aw;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/aw;-><init>(Lcom/xiaomi/passport/ui/u;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/b;->Gr(Lcom/xiaomi/passport/task/c;)Lcom/xiaomi/passport/task/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/b;->build()Lcom/xiaomi/passport/task/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/u;->qJ:Lcom/xiaomi/passport/task/a;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qJ:Lcom/xiaomi/passport/task/a;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/task/a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private vu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private vv(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qU:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;->XC(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/p;->password(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/p;->build()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/u;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "masked_phone_number"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/passport/ui/u;->IM(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    return-void
.end method

.method private vw(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qX:Lcom/xiaomi/passport/ui/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qX:Lcom/xiaomi/passport/ui/v;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/v;->cancel(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    new-instance v0, Lcom/xiaomi/passport/ui/v;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/v;-><init>(Lcom/xiaomi/passport/ui/u;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/u;->qX:Lcom/xiaomi/passport/ui/v;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qX:Lcom/xiaomi/passport/ui/v;

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/v;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private vx(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/widget/f;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->setTitle(I)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0030

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/ui/u;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->zw(Ljava/lang/CharSequence;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/ax;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/ax;-><init>(Lcom/xiaomi/passport/ui/u;Ljava/lang/String;)V

    const v2, 0x7f0c0064

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/widget/f;->zy(ILandroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/f;->zt()Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->show()V

    return-void
.end method

.method private vy()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qW:Lcom/xiaomi/passport/RegisterType;

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/u;->qP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "upLink_click_auto_generate_pwd_btn"

    :goto_0
    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/u;->qP:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/u;->ug(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "downLink_click_auto_generate_pwd_btn"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "click_auto_generate_reset_pwd_btn"

    goto :goto_0
.end method

.method private vz()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qW:Lcom/xiaomi/passport/RegisterType;

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/u;->qP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "upLink_click_set_password_btn"

    :goto_0
    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/u;->qP:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/u;->ug(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "downLink_click_set_password_btn"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "click_set_password_btn"

    goto :goto_0
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "InputRegisterPasswordFr"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qZ:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/u;->qY:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/passport/ui/u;->qY:Z

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/u;->vC()V

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/passport/ui/u;->qP:Z

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/u;->ug(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qL:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/u;->vr()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "password_page_click_confirm_btn"

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/u;->vu()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/passport/ui/u;->vs(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/u;->vz()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qK:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    const-string/jumbo v0, "click_auto_generate_pwd_btn"

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/u;->vt()V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/u;->vy()V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/xiaomi/passport/v2/ui/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/u;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "androidPackageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/u;->qQ:Ljava/lang/String;

    const-string/jumbo v1, "extra_user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/u;->mUserId:Ljava/lang/String;

    const-string/jumbo v1, "extra_identity_auth_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/u;->qM:Ljava/lang/String;

    const-string/jumbo v1, "extra_identity_post_hint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/u;->qN:Ljava/lang/String;

    const-string/jumbo v1, "extra_identity_slh"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/u;->qO:Ljava/lang/String;

    const-string/jumbo v1, "extra_ticket_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/u;->ra:Ljava/lang/String;

    const-string/jumbo v1, "extra_is_uplink_reg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/passport/ui/u;->qP:Z

    const-string/jumbo v1, "register_type_index"

    sget-object v2, Lcom/xiaomi/passport/RegisterType;->Lw:Lcom/xiaomi/passport/RegisterType;

    invoke-virtual {v2}, Lcom/xiaomi/passport/RegisterType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/xiaomi/passport/RegisterType;->values()[Lcom/xiaomi/passport/RegisterType;

    move-result-object v2

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/xiaomi/passport/ui/u;->qW:Lcom/xiaomi/passport/RegisterType;

    const-string/jumbo v1, "activator_phone_register_params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/u;->qU:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/u;->px:Z

    if-eqz v0, :cond_2

    const v0, 0x7f03002e

    :goto_0
    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f10006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/u;->qT:Landroid/widget/TextView;

    const v0, 0x7f100082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/u;->px:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v2, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sC:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    :cond_0
    const v0, 0x7f100084

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/u;->qZ:Landroid/widget/ImageView;

    const v0, 0x7f10006b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/u;->qR:Landroid/widget/TextView;

    const v0, 0x7f100069

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/u;->qL:Landroid/widget/Button;

    const v0, 0x7f10006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/u;->qK:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    new-instance v2, Lcom/xiaomi/passport/ui/av;

    invoke-direct {v2, p0}, Lcom/xiaomi/passport/ui/av;-><init>(Lcom/xiaomi/passport/ui/u;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qZ:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qL:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v3, p0, Lcom/xiaomi/passport/ui/u;->qY:Z

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/u;->vC()V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/u;->vB()V

    const v0, 0x7f100080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/u;->qW:Lcom/xiaomi/passport/RegisterType;

    sget-object v3, Lcom/xiaomi/passport/RegisterType;->Lx:Lcom/xiaomi/passport/RegisterType;

    if-ne v2, v3, :cond_1

    const v2, 0x7f0c002c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-object v1

    :cond_2
    const v0, 0x7f030020

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qV:Lcom/xiaomi/passport/task/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qV:Lcom/xiaomi/passport/task/i;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/task/i;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/u;->qV:Lcom/xiaomi/passport/task/i;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qX:Lcom/xiaomi/passport/ui/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qX:Lcom/xiaomi/passport/ui/v;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/v;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/u;->qX:Lcom/xiaomi/passport/ui/v;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qJ:Lcom/xiaomi/passport/task/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qJ:Lcom/xiaomi/passport/task/a;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/task/a;->cancel(Z)Z

    iput-object v1, p0, Lcom/xiaomi/passport/ui/u;->qJ:Lcom/xiaomi/passport/task/a;

    :cond_2
    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->onPause()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/passport/v2/ui/c;->onResume()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/u;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/u;->qS:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/utils/r;->EI(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method protected te()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/u;->qW:Lcom/xiaomi/passport/RegisterType;

    sget-object v1, Lcom/xiaomi/passport/RegisterType;->Lx:Lcom/xiaomi/passport/RegisterType;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c002c

    return v0

    :cond_0
    const v0, 0x7f0c000b

    return v0
.end method
