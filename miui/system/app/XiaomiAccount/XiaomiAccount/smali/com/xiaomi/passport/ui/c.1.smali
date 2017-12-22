.class Lcom/xiaomi/passport/ui/c;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUserId:Ljava/lang/String;

.field private final oS:Ljava/lang/String;

.field final synthetic oT:Lcom/xiaomi/passport/ui/b;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/ui/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/c;->oT:Lcom/xiaomi/passport/ui/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/passport/ui/c;->mUserId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/c;->oS:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/ui/b;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/passport/ui/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/passport/ui/c;-><init>(Lcom/xiaomi/passport/ui/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/c;->sL([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/c;->sM(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/c;->oT:Lcom/xiaomi/passport/ui/b;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/b;->sG(Lcom/xiaomi/passport/ui/b;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected varargs sL([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/c;->mUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/c;->oS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/utils/x;->FD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->printStackTrace()V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected sM(Ljava/lang/Integer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/c;->oT:Lcom/xiaomi/passport/ui/b;

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c003c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/c;->oT:Lcom/xiaomi/passport/ui/b;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/b;->sG(Lcom/xiaomi/passport/ui/b;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/c;->oT:Lcom/xiaomi/passport/ui/b;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/b;->sF(Lcom/xiaomi/passport/ui/b;)Lcom/xiaomi/passport/data/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/passport/data/f;->za(J)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/c;->oT:Lcom/xiaomi/passport/ui/b;

    const-wide/16 v2, 0x7530

    invoke-static {v0, v2, v3}, Lcom/xiaomi/passport/ui/b;->sK(Lcom/xiaomi/passport/ui/b;J)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
