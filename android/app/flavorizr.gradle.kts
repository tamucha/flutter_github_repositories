import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("product") {
            dimension = "flavor-type"
            applicationId = "com.example.github"
            resValue(type = "string", name = "app_name", value = "We love GitHub!")
        }
        create("staging") {
            dimension = "flavor-type"
            applicationId = "com.example.github.stg"
            resValue(type = "string", name = "app_name", value = "We love GitHub! For Stg")
        }
    }
}