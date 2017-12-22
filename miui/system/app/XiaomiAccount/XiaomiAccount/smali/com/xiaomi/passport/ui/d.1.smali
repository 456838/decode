.class Lcom/xiaomi/passport/ui/d;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final oU:Ljava/lang/String;

.field final synthetic oV:Lcom/xiaomi/passport/ui/b;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/ui/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/passport/ui/d;->oU:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/ui/b;Ljava/lang/String;Lcom/xiaomi/passport/ui/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/d;-><init>(Lcom/xiaomi/passport/ui/b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/d;->sN([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/d;->sO(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/b;->sH(Lcom/xiaomi/passport/ui/b;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected varargs sN([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/d;->oU:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/b;->aar(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected sO(Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/b;->sI(Lcom/xiaomi/passport/ui/b;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    invoke-static {v1}, Lcom/xiaomi/passport/ui/b;->sI(Lcom/xiaomi/passport/ui/b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/xiaomi/passport/ui/F;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/ui/F;-><init>(Lcom/xiaomi/passport/ui/d;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    const-string/jumbo v1, "email_reg_success_and_activated"

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/b;->tP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/d;->oU:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    invoke-static {v1}, Lcom/xiaomi/passport/ui/b;->sJ(Lcom/xiaomi/passport/ui/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    invoke-virtual {v2}, Lcom/xiaomi/passport/ui/b;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/ui/e;->sV(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/passport/ui/e;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/d;->oV:Lcom/xiaomi/passport/ui/b;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v0}, Lcom/xiaomi/passport/utils/r;->Ez(Landroid/app/Activity;Landroid/app/Fragment;ZI)V

    goto :goto_0
.end method
