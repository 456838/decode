.class final Lcom/xiaomi/account/ui/br;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic gz:Lcom/xiaomi/account/ui/F;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/br;->gz:Lcom/xiaomi/account/ui/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
