.class final Lcom/xiaomi/accounts/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Nw:Lcom/xiaomi/accounts/h;

.field final synthetic Nx:Landroid/accounts/AccountManagerCallback;

.field final synthetic Ny:Landroid/accounts/AccountManagerFuture;


# direct methods
.method constructor <init>(Lcom/xiaomi/accounts/h;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accounts/y;->Nw:Lcom/xiaomi/accounts/h;

    iput-object p2, p0, Lcom/xiaomi/accounts/y;->Nx:Landroid/accounts/AccountManagerCallback;

    iput-object p3, p0, Lcom/xiaomi/accounts/y;->Ny:Landroid/accounts/AccountManagerFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accounts/y;->Nx:Landroid/accounts/AccountManagerCallback;

    iget-object v1, p0, Lcom/xiaomi/accounts/y;->Ny:Landroid/accounts/AccountManagerFuture;

    invoke-interface {v0, v1}, Landroid/accounts/AccountManagerCallback;->run(Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method
