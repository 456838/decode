.class final Lcom/xiaomi/passport/ui/W;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic tC:Lcom/xiaomi/passport/ui/h;

.field final synthetic tD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/W;->tC:Lcom/xiaomi/passport/ui/h;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/W;->tD:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/W;->yo([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/W;->yp(Landroid/util/Pair;)V

    return-void
.end method

.method protected varargs yo([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/ui/W;->tD:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/W;->tD:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/passport/utils/x;->FI(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/account/b;->VJ:Ljava/lang/String;

    goto :goto_0
.end method

.method protected yp(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v0, "CaptchaDialogController"

    const-string/jumbo v1, "captcha result is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/W;->tC:Lcom/xiaomi/passport/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/h;->tp(Lcom/xiaomi/passport/ui/h;)Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/W;->tC:Lcom/xiaomi/passport/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/h;->tp(Lcom/xiaomi/passport/ui/h;)Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/W;->tC:Lcom/xiaomi/passport/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/h;->tp(Lcom/xiaomi/passport/ui/h;)Lcom/xiaomi/passport/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/widget/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/W;->tC:Lcom/xiaomi/passport/ui/h;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/ui/h;->tt(Lcom/xiaomi/passport/ui/h;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
