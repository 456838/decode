.class Lcom/loc/aZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic apU:Lcom/loc/bG;

.field final synthetic apV:Lcom/loc/aX;


# direct methods
.method constructor <init>(Lcom/loc/aX;Lcom/loc/bG;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/aZ;->apV:Lcom/loc/aX;

    iput-object p2, p0, Lcom/loc/aZ;->apU:Lcom/loc/bG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/aZ;->apV:Lcom/loc/aX;

    invoke-static {p2}, Lcom/loc/k$a;->aFQ(Landroid/os/IBinder;)Lcom/loc/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/aX;->aCH(Lcom/loc/aX;Lcom/loc/k;)Lcom/loc/k;

    iget-object v0, p0, Lcom/loc/aZ;->apU:Lcom/loc/bG;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/loc/bG;->a(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/aZ;->apV:Lcom/loc/aX;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/aX;->aCH(Lcom/loc/aX;Lcom/loc/k;)Lcom/loc/k;

    return-void
.end method
