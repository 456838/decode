.class Lcom/xiaomi/account/ui/p;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aG:Landroid/graphics/Bitmap;

.field private aH:Lcom/xiaomi/account/data/d;

.field final synthetic aI:Lcom/xiaomi/account/ui/m;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/m;Lcom/xiaomi/account/data/d;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/p;->aI:Lcom/xiaomi/account/ui/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/account/ui/p;->aH:Lcom/xiaomi/account/data/d;

    iput-object p3, p0, Lcom/xiaomi/account/ui/p;->aG:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public bI()Lcom/xiaomi/account/data/d;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/p;->aH:Lcom/xiaomi/account/data/d;

    return-object v0
.end method

.method public bJ()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/p;->aG:Landroid/graphics/Bitmap;

    return-object v0
.end method
