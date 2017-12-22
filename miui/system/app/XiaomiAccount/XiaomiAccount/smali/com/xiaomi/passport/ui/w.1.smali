.class public Lcom/xiaomi/passport/ui/w;
.super Lcom/xiaomi/passport/ui/p;
.source ""


# instance fields
.field private re:Ljava/lang/String;

.field private rf:Ljava/lang/String;

.field private rg:Ljava/lang/String;

.field private rh:Ljava/lang/String;

.field private ri:Lcom/xiaomi/passport/utils/k;

.field private rj:Landroid/widget/TextView;

.field private rk:Landroid/widget/Button;

.field private final rl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/passport/task/i;",
            ">;"
        }
    .end annotation
.end field

.field private rm:Landroid/widget/TextView;

.field private rn:Landroid/widget/TextView;

.field private ro:[I

.field private rp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/p;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->rl:Ljava/util/List;

    return-void
.end method

.method private vR(Lcom/xiaomi/passport/task/i;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private vS()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/w;->vU()[I

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/passport/ui/w;->ro:[I

    sget-object v2, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vB:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v2, v0}, Lcom/xiaomi/passport/ui/w;->ub(Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/w;->wb()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/w;->pz:Lcom/xiaomi/passport/ui/m;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/w;->ro:[I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private vT()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rl:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/task/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/i;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/task/i;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private vU()[I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/passport/a/c;->rn()I

    move-result v1

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/passport/a/c;->rv()I

    move-result v2

    new-array v3, v1, [I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/xiaomi/passport/a/c;->rx(I)Z

    move-result v4

    if-eqz v4, :cond_1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private vV()V
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/v2/ui/l;

    invoke-direct {v0}, Lcom/xiaomi/passport/v2/ui/l;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/p;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/w;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/p;->tQ(Lcom/xiaomi/passport/ui/m;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private vW()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "visit_downLink_reg_page"

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/passport/ui/w;->ug(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/w;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/g;->JF(Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/utils/r;->EC(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method private vX()V
    .locals 3

    const-string/jumbo v0, "visit_email_reg_page"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/w;->tP(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.XIAOMI_ACCOUNT_REG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v1, "register_type_index"

    sget-object v2, Lcom/xiaomi/passport/RegisterType;->Lz:Lcom/xiaomi/passport/RegisterType;

    invoke-virtual {v2}, Lcom/xiaomi/passport/RegisterType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/w;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private vY(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/passport/utils/j;->Dw(Ljava/lang/String;)Lcom/xiaomi/passport/utils/k;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->ri:Lcom/xiaomi/passport/utils/k;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->ri:Lcom/xiaomi/passport/utils/k;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dw(Ljava/lang/String;)Lcom/xiaomi/passport/utils/k;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->ri:Lcom/xiaomi/passport/utils/k;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pZ:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/w;->ri:Lcom/xiaomi/passport/utils/k;

    iget-object v2, v2, Lcom/xiaomi/passport/utils/k;->zX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private vZ()V
    .locals 8

    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v0, Lcom/xiaomi/passport/widget/f;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/widget/f;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/f;->setTitle(I)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/widget/f;->zB(Landroid/view/View;)Lcom/xiaomi/passport/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/f;->zt()Lcom/xiaomi/passport/widget/e;

    move-result-object v4

    const v0, 0x7f10009f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f1000a0

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f1000a1

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/w;->vS()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/xiaomi/passport/ui/w;->ro:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/xiaomi/passport/ui/w;->ro:[I

    array-length v5, v5

    if-ne v5, v7, :cond_0

    const v5, 0x7f0c000d

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v5, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vB:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v0, v5, v7}, Lcom/xiaomi/passport/ui/w;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    :goto_0
    new-instance v5, Lcom/xiaomi/passport/ui/aD;

    invoke-direct {v5, p0, v4}, Lcom/xiaomi/passport/ui/aD;-><init>(Lcom/xiaomi/passport/ui/w;Lcom/xiaomi/passport/widget/e;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/xiaomi/passport/ui/aE;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/passport/ui/aE;-><init>(Lcom/xiaomi/passport/ui/w;Lcom/xiaomi/passport/widget/e;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vs:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v2, v0, v7}, Lcom/xiaomi/passport/ui/w;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    new-instance v0, Lcom/xiaomi/passport/ui/aF;

    invoke-direct {v0, p0, v4}, Lcom/xiaomi/passport/ui/aF;-><init>(Lcom/xiaomi/passport/ui/w;Lcom/xiaomi/passport/widget/e;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1000a2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aG;

    invoke-direct {v1, p0, v4}, Lcom/xiaomi/passport/ui/aG;-><init>(Lcom/xiaomi/passport/ui/w;Lcom/xiaomi/passport/widget/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4}, Lcom/xiaomi/passport/widget/e;->show()V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/xiaomi/passport/ui/w;->ro:[I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/xiaomi/passport/ui/w;->ro:[I

    array-length v5, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vC:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v0, v5, v7}, Lcom/xiaomi/passport/ui/w;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    sget-object v5, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vD:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    invoke-virtual {p0, v1, v5, v7}, Lcom/xiaomi/passport/ui/w;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this should not happen!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    const v5, 0x7f0c0013

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private wa(I)V
    .locals 3

    const-string/jumbo v0, "click_upLink_reg_btn"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/w;->ug(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/task/j;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/task/j;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f0c0073

    invoke-virtual {p0, v2}, Lcom/xiaomi/passport/ui/w;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/task/j;->Hj(Ljava/lang/String;)Lcom/xiaomi/passport/task/j;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/ui/aH;

    invoke-direct {v2, p0, v0, p1}, Lcom/xiaomi/passport/ui/aH;-><init>(Lcom/xiaomi/passport/ui/w;Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/task/j;->Hg(Lcom/xiaomi/passport/task/k;)Lcom/xiaomi/passport/task/j;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aI;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/aI;-><init>(Lcom/xiaomi/passport/ui/w;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/j;->Hf(Ljava/lang/Runnable;)Lcom/xiaomi/passport/task/j;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aJ;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/aJ;-><init>(Lcom/xiaomi/passport/ui/w;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/j;->Hk(Lcom/xiaomi/passport/task/l;)Lcom/xiaomi/passport/task/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/j;->build()Lcom/xiaomi/passport/task/i;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/task/i;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/w;->vR(Lcom/xiaomi/passport/task/i;)V

    return-void
.end method

.method private wb()Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/b;->OR()Lcom/xiaomi/passport/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/passport/a/c;->rC()Z

    move-result v0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v0, "has_sim_card"

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/w;->ug(Ljava/lang/String;Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "no_sim_card"

    goto :goto_1
.end method

.method private wc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/xiaomi/passport/task/g;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaomi/passport/ui/w;->px:Z

    iget-object v3, p0, Lcom/xiaomi/passport/ui/w;->py:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/xiaomi/passport/task/g;-><init>(Landroid/app/Activity;ZZLjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/task/g;->GH(Ljava/lang/String;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/task/g;->GB(Ljava/lang/String;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/passport/task/g;->GK(Ljava/lang/String;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaomi/passport/task/g;->GL(Ljava/lang/String;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/w;->pz:Lcom/xiaomi/passport/ui/m;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/g;->GE(Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aL;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/aL;-><init>(Lcom/xiaomi/passport/ui/w;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/g;->GD(Landroid/content/DialogInterface$OnClickListener;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aM;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/aM;-><init>(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/g;->GC(Lcom/xiaomi/passport/task/h;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aN;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/aN;-><init>(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/g;->GG(Lcom/xiaomi/passport/task/h;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/passport/ui/aO;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/passport/ui/aO;-><init>(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/task/g;->GJ(Lcom/xiaomi/passport/task/h;)Lcom/xiaomi/passport/task/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/task/g;->build()Lcom/xiaomi/passport/task/f;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/passport/utils/s;->ET()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/task/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/w;->vR(Lcom/xiaomi/passport/task/i;)V

    return-void
.end method

.method static synthetic wd(Lcom/xiaomi/passport/ui/w;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->re:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic we(Lcom/xiaomi/passport/ui/w;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic wf(Lcom/xiaomi/passport/ui/w;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic wg(Lcom/xiaomi/passport/ui/w;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rh:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic wh(Lcom/xiaomi/passport/ui/w;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic wi(Lcom/xiaomi/passport/ui/w;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rk:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic wj(Lcom/xiaomi/passport/ui/w;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rn:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic wk(Lcom/xiaomi/passport/ui/w;)[I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->ro:[I

    return-object v0
.end method

.method static synthetic wl(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/w;->re:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic wm(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/w;->rf:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic wn(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/w;->rg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic wo(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/w;->rh:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic wp(Lcom/xiaomi/passport/ui/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/w;->vV()V

    return-void
.end method

.method static synthetic wq(Lcom/xiaomi/passport/ui/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/w;->vW()V

    return-void
.end method

.method static synthetic wr(Lcom/xiaomi/passport/ui/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/w;->vX()V

    return-void
.end method

.method static synthetic ws(Lcom/xiaomi/passport/ui/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/w;->vZ()V

    return-void
.end method

.method static synthetic wt(Lcom/xiaomi/passport/ui/w;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/w;->wa(I)V

    return-void
.end method

.method static synthetic wu(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/passport/ui/w;->wc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected en()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pY:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pY:Landroid/widget/EditText;

    const v1, 0x7f0c005a

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/w;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/passport/ui/w;->ri:Lcom/xiaomi/passport/utils/k;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/w;->ri:Lcom/xiaomi/passport/utils/k;

    invoke-static {v0, v2}, Lcom/xiaomi/passport/utils/j;->Dx(Ljava/lang/String;Lcom/xiaomi/passport/utils/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pY:Landroid/widget/EditText;

    const v1, 0x7f0c005b

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/w;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/passport/ui/w;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v1, 0x7f0c0060

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/w;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/xiaomi/passport/ui/w;->pN:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/xiaomi/passport/ui/w;->pL:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pL:Landroid/widget/EditText;

    const v1, 0x7f0c0062

    invoke-virtual {p0, v1}, Lcom/xiaomi/passport/ui/w;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    new-instance v3, Lcom/xiaomi/passport/ui/aC;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/xiaomi/passport/ui/aC;-><init>(Lcom/xiaomi/passport/ui/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/passport/ui/w;->tW(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PhonePasswordLoginFragment"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/passport/ui/p;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const-string/jumbo v0, "country_iso"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pB:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pB:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/w;->vY(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rj:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "phone_login_click_use_other_ways_btn"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/w;->uq(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/ui/aA;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/aA;-><init>(Lcom/xiaomi/passport/ui/w;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/w;->tW(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rk:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "switch_to_reg"

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/w;->tS(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/passport/ui/aB;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/aB;-><init>(Lcom/xiaomi/passport/ui/w;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/w;->tW(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pZ:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.XIAOMI_ACCOUNT_AREA_CODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "extra_show_skip_login"

    iget-boolean v2, p0, Lcom/xiaomi/passport/ui/w;->px:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1000

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/w;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rp:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->tV()V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/p;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/w;->px:Z

    if-eqz v0, :cond_2

    const v0, 0x7f030037

    :goto_0
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f100034

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pV:Landroid/widget/TextView;

    const v0, 0x7f100081

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->rp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/xiaomi/passport/ui/w;->rp:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/w;->px:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rp:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f100036

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pQ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    invoke-virtual {v0, v2}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->setVisibility(I)V

    const v0, 0x7f100037

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pX:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pX:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f100038

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pZ:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pZ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100039

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pY:Landroid/widget/EditText;

    const v0, 0x7f100082

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/ui/PassportGroupEditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    const v0, 0x7f100061

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pL:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/w;->px:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pJ:Lcom/xiaomi/passport/ui/PassportGroupEditText;

    sget-object v1, Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;->sB:Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/PassportGroupEditText;->xS(Lcom/xiaomi/passport/ui/PassportGroupEditText$Style;)V

    :cond_1
    const v0, 0x7f100062

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pM:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pM:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10001f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pN:Landroid/view/View;

    const v0, 0x7f100084

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pK:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pK:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/w;->qa:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/ui/w;->uo(Z)V

    const v0, 0x7f10003b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pH:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pH:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100086

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->rj:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rj:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10003a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pI:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100073

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->rm:Landroid/widget/TextView;

    const v0, 0x7f100070

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->rn:Landroid/widget/TextView;

    const v0, 0x7f100087

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->rk:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100020

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/a;

    invoke-direct {v1}, Lcom/xiaomi/passport/v2/utils/a;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lcom/xiaomi/passport/ui/ay;

    invoke-direct {v4, p0}, Lcom/xiaomi/passport/ui/ay;-><init>(Lcom/xiaomi/passport/ui/w;)V

    invoke-virtual {v1, v2, v0, v4}, Lcom/xiaomi/passport/v2/utils/a;->Li(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v3

    :cond_2
    const v0, 0x7f030042

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/w;->vT()V

    invoke-super {p0}, Lcom/xiaomi/passport/ui/p;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/xiaomi/passport/ui/p;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dv(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->uv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/w;->uw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pB:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/ui/w;->vY(Ljava/lang/String;)V

    return-void

    :cond_1
    iput-object v0, p0, Lcom/xiaomi/passport/ui/w;->pB:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pY:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pY:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method protected uB()V
    .locals 3

    invoke-super {p0}, Lcom/xiaomi/passport/ui/p;->uB()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rm:Landroid/widget/TextView;

    sget-object v1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vy:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/ui/w;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/w;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rn:Landroid/widget/TextView;

    sget-object v1, Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;->vz:Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/passport/ui/w;->ue(Landroid/widget/TextView;Lcom/xiaomi/passport/data/AppConfigure$ConfigureId;Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->pz:Lcom/xiaomi/passport/ui/m;

    new-instance v1, Lcom/xiaomi/passport/ui/az;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/az;-><init>(Lcom/xiaomi/passport/ui/w;)V

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/ui/m;->fJ(Lcom/xiaomi/passport/ui/n;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/w;->rn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
