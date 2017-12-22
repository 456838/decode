.class final Lcom/xiaomi/account/guestaccount/g;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic ie:Lcom/xiaomi/account/guestaccount/GuestAccountService;

.field final synthetic if:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/guestaccount/GuestAccountService;Ljava/lang/RuntimeException;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/guestaccount/g;->ie:Lcom/xiaomi/account/guestaccount/GuestAccountService;

    iput-object p2, p0, Lcom/xiaomi/account/guestaccount/g;->if:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/guestaccount/g;->if:Ljava/lang/RuntimeException;

    throw v0
.end method
