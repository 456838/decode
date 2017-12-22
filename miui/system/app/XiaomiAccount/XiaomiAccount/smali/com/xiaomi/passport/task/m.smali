.class public Lcom/xiaomi/passport/task/m;
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
.field private final Cr:Lcom/xiaomi/passport/task/o;

.field private final mCaptchaUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/xiaomi/passport/task/o;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/task/m;->mCaptchaUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/passport/task/m;->Cr:Lcom/xiaomi/passport/task/o;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/xiaomi/passport/task/o;Lcom/xiaomi/passport/task/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/task/m;-><init>(Ljava/lang/String;Lcom/xiaomi/passport/task/o;)V

    return-void
.end method


# virtual methods
.method protected varargs Hs([Ljava/lang/Void;)Landroid/util/Pair;
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

    iget-object v0, p0, Lcom/xiaomi/passport/task/m;->mCaptchaUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/task/m;->mCaptchaUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/b;->aaB(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected Ht(Landroid/util/Pair;)V
    .locals 1
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

    iget-object v0, p0, Lcom/xiaomi/passport/task/m;->Cr:Lcom/xiaomi/passport/task/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/task/m;->Cr:Lcom/xiaomi/passport/task/o;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/task/o;->yv(Landroid/util/Pair;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/task/m;->Hs([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/task/m;->Ht(Landroid/util/Pair;)V

    return-void
.end method
