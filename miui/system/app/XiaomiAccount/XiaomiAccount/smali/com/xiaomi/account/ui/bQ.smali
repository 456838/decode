.class final Lcom/xiaomi/account/ui/bQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hk:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bQ;->hk:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bQ;->hk:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->ge(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;Z)V

    return-void
.end method
