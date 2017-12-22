.class Lcom/loc/cc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic arO:Lcom/loc/aT;


# direct methods
.method constructor <init>(Lcom/loc/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cc;->arO:Lcom/loc/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/cc;->arO:Lcom/loc/aT;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/loc/aT;->aoV:Landroid/os/Messenger;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/cc;->arO:Lcom/loc/aT;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/loc/aT;->aoV:Landroid/os/Messenger;

    return-void
.end method
