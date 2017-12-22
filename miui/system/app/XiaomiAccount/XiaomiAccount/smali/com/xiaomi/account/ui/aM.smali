.class final Lcom/xiaomi/account/ui/aM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fB:Lcom/xiaomi/account/ui/FindPasswordEntryActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/FindPasswordEntryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aM;->fB:Lcom/xiaomi/account/ui/FindPasswordEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/aM;->fB:Lcom/xiaomi/account/ui/FindPasswordEntryActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/FindPasswordEntryActivity;->finish()V

    return-void
.end method
