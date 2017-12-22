.class final Lcom/xiaomi/finddevice/common/FindDeviceHttpClient$2;
.super Ljava/lang/Object;
.source "FindDeviceHttpClient.java"

# interfaces
.implements Lmiui/cloud/net/XHttpClient$IUserAgentNameProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/FindDeviceHttpClient;->get()Lmiui/cloud/net/XHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$userAgentName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$userAgentName"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient$2;->val$userAgentName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/FindDeviceHttpClient$2;->val$userAgentName:Ljava/lang/String;

    return-object v0
.end method
