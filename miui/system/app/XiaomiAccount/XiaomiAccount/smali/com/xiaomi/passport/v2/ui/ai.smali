.class final Lcom/xiaomi/passport/v2/ui/ai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/task/o;


# instance fields
.field final synthetic FI:Lcom/xiaomi/passport/v2/ui/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/ai;->FI:Lcom/xiaomi/passport/v2/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public yv(Landroid/util/Pair;)V
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

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/ai;->FI:Lcom/xiaomi/passport/v2/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/h;->Kd(Lcom/xiaomi/passport/v2/ui/h;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/ai;->FI:Lcom/xiaomi/passport/v2/ui/h;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaomi/passport/v2/ui/h;->Kh(Lcom/xiaomi/passport/v2/ui/h;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
