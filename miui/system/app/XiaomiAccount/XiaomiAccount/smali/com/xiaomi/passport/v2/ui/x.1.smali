.class final Lcom/xiaomi/passport/v2/ui/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic DZ:Lcom/xiaomi/passport/v2/ui/b;

.field final synthetic Ea:Ljava/lang/String;

.field final synthetic Eb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/x;->DZ:Lcom/xiaomi/passport/v2/ui/b;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/x;->Ea:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/x;->Eb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/x;->DZ:Lcom/xiaomi/passport/v2/ui/b;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/x;->Ea:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/x;->Eb:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/b;->Is(Lcom/xiaomi/passport/v2/ui/b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
