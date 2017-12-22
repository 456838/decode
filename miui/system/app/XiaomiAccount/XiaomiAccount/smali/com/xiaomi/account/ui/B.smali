.class Lcom/xiaomi/account/ui/B;
.super Lcom/xiaomi/account/data/d;
.source ""


# instance fields
.field public bP:Z

.field final synthetic bQ:Lcom/xiaomi/account/ui/SnsAccountActivity;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/ui/SnsAccountActivity;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/B;->bQ:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-direct {p0, p2}, Lcom/xiaomi/account/data/d;-><init>(I)V

    iput-boolean p3, p0, Lcom/xiaomi/account/ui/B;->bP:Z

    return-void
.end method
