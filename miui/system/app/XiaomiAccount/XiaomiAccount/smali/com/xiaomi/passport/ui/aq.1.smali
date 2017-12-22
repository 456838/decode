.class final Lcom/xiaomi/passport/ui/aq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/task/o;


# instance fields
.field final synthetic uh:Lcom/xiaomi/passport/ui/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aq;->uh:Lcom/xiaomi/passport/ui/p;

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

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aq;->uh:Lcom/xiaomi/passport/ui/p;

    iget-object v1, v0, Lcom/xiaomi/passport/ui/p;->pM:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/aq;->uh:Lcom/xiaomi/passport/ui/p;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/passport/ui/p;->pO:Ljava/lang/String;

    :cond_0
    return-void
.end method
