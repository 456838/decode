.class final Lcom/xiaomi/account/ui/bA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gJ:Lcom/xiaomi/account/ui/I;

.field final synthetic gK:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bA;->gJ:Lcom/xiaomi/account/ui/I;

    iput-object p2, p0, Lcom/xiaomi/account/ui/bA;->gK:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bA;->gJ:Lcom/xiaomi/account/ui/I;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bA;->gK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/I;->fq(Lcom/xiaomi/account/ui/I;Ljava/lang/String;)V

    return-void
.end method
