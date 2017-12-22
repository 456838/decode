.class Lcom/xiaomi/account/ui/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# instance fields
.field final synthetic h:Lcom/xiaomi/account/ui/MyDeviceListActivity;


# direct methods
.method private constructor <init>(Lcom/xiaomi/account/ui/MyDeviceListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/a;->h:Lcom/xiaomi/account/ui/MyDeviceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/account/ui/MyDeviceListActivity;Lcom/xiaomi/account/ui/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/account/ui/a;-><init>(Lcom/xiaomi/account/ui/MyDeviceListActivity;)V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
