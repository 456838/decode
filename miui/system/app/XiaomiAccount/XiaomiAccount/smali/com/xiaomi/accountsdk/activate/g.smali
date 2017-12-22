.class final Lcom/xiaomi/accountsdk/activate/g;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aaJ:I

.field final synthetic aaK:Landroid/content/Context;

.field final synthetic aaL:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

.field final synthetic aaM:I

.field final synthetic aaN:I

.field final synthetic aaO:I

.field final synthetic aaP:J


# direct methods
.method constructor <init>(ILandroid/content/Context;Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;IIIJ)V
    .locals 1

    iput p1, p0, Lcom/xiaomi/accountsdk/activate/g;->aaJ:I

    iput-object p2, p0, Lcom/xiaomi/accountsdk/activate/g;->aaK:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/activate/g;->aaL:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    iput p4, p0, Lcom/xiaomi/accountsdk/activate/g;->aaM:I

    iput p5, p0, Lcom/xiaomi/accountsdk/activate/g;->aaN:I

    iput p6, p0, Lcom/xiaomi/accountsdk/activate/g;->aaO:I

    iput-wide p7, p0, Lcom/xiaomi/accountsdk/activate/g;->aaP:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs akk([Ljava/lang/Void;)[Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/Bundle;

    iget v1, p0, Lcom/xiaomi/accountsdk/activate/g;->aaJ:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/activate/g;->aaK:Landroid/content/Context;

    iget v2, p0, Lcom/xiaomi/accountsdk/activate/g;->aaJ:I

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aki(Landroid/content/Context;I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/activate/g;->aaK:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aki(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/activate/g;->aaK:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->aki(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public akl([Landroid/os/Bundle;)V
    .locals 8

    iget v0, p0, Lcom/xiaomi/accountsdk/activate/g;->aaJ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/xiaomi/accountsdk/activate/g;->aaJ:I

    iget-object v2, p0, Lcom/xiaomi/accountsdk/activate/g;->aaL:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    iget v3, p0, Lcom/xiaomi/accountsdk/activate/g;->aaM:I

    iget v4, p0, Lcom/xiaomi/accountsdk/activate/g;->aaN:I

    iget v5, p0, Lcom/xiaomi/accountsdk/activate/g;->aaO:I

    iget-wide v6, p0, Lcom/xiaomi/accountsdk/activate/g;->aaP:J

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->akh(ILcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;IIIJ)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/accountsdk/activate/g;->aaL:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    iget v3, p0, Lcom/xiaomi/accountsdk/activate/g;->aaM:I

    iget v4, p0, Lcom/xiaomi/accountsdk/activate/g;->aaN:I

    iget v5, p0, Lcom/xiaomi/accountsdk/activate/g;->aaO:I

    iget-wide v6, p0, Lcom/xiaomi/accountsdk/activate/g;->aaP:J

    const/4 v1, 0x0

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->akh(ILcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;IIIJ)V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/activate/g;->aaL:Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;

    iget v3, p0, Lcom/xiaomi/accountsdk/activate/g;->aaM:I

    iget v4, p0, Lcom/xiaomi/accountsdk/activate/g;->aaN:I

    iget v5, p0, Lcom/xiaomi/accountsdk/activate/g;->aaO:I

    iget-wide v6, p0, Lcom/xiaomi/accountsdk/activate/g;->aaP:J

    const/4 v1, 0x1

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/accountsdk/activate/ActivateStatusReceiver;->akh(ILcom/xiaomi/accountsdk/activate/ActivateStatusReceiver$Event;IIIJ)V

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/activate/g;->akk([Ljava/lang/Void;)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/activate/g;->akl([Landroid/os/Bundle;)V

    return-void
.end method
