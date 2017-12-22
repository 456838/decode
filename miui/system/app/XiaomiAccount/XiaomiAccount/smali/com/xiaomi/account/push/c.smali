.class public Lcom/xiaomi/account/push/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final nv:Ljava/lang/String;

.field public final nw:Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;


# direct methods
.method public constructor <init>(Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/push/c;->nw:Lcom/xiaomi/account/push/AccountPushMessageProcessor$PushType;

    iput-object p2, p0, Lcom/xiaomi/account/push/c;->nv:Ljava/lang/String;

    return-void
.end method
