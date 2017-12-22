.class final Lcom/xiaomi/passport/ui/Q;
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
.field final synthetic tp:Lcom/xiaomi/passport/ui/e;

.field final synthetic tq:Ljava/lang/Runnable;

.field final synthetic tr:Ljava/lang/String;

.field final synthetic ts:Ljava/lang/Runnable;

.field final synthetic tt:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/e;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/Q;->tp:Lcom/xiaomi/passport/ui/e;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/Q;->tq:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/Q;->tr:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/Q;->ts:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/xiaomi/passport/ui/Q;->tt:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/Q;->ym([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/Q;->yn(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/Q;->tq:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected varargs ym([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    new-instance v0, Lcom/xiaomi/accountsdk/account/f;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/Q;->tp:Lcom/xiaomi/passport/ui/e;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/Q;->tp:Lcom/xiaomi/passport/ui/e;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/Q;->tr:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/f;->acO()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/xiaomi/passport/ui/e;->ta(Lcom/xiaomi/passport/ui/e;Ljava/lang/String;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected yn(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/Q;->ts:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/Q;->tt:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
