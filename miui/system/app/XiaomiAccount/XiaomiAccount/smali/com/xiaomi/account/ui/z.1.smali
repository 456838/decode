.class Lcom/xiaomi/account/ui/z;
.super Lcom/xiaomi/account/data/d;
.source ""


# instance fields
.field public bK:Lcom/xiaomi/account/data/b;

.field final synthetic bL:Lcom/xiaomi/account/ui/SnsAccountActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/SnsAccountActivity;ILcom/xiaomi/account/data/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/z;->bL:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-direct {p0, p2}, Lcom/xiaomi/account/data/d;-><init>(I)V

    iput-object p3, p0, Lcom/xiaomi/account/ui/z;->bK:Lcom/xiaomi/account/data/b;

    return-void
.end method
