/** 
* "Does this founder understand that medical information..."
* "systems are dangerous when they pretend to be smart?"
*
*  Clinical API Contract
*
*  This API provides a structured, educational context 
*  for cancer care discussions. 
*
*  What does this app not do? 
*
*   Diagnose, provide predictions, 
*   treatmet recommendations, or optimization. 
*
*   A violation of these principles is a critical failure
*   Not a features request. 
*
 * Global Invariants:
 * - No individual-level predictions
 * - No treatment ranking or “best option” outputs
 * - No clinician ratings or leaderboards
 * - No use without explicit uncertainty framing
 * - No replacement of clinician judgment
 */

 {
    "condition_category": "colorectal_cancer",
    "age_band": "50-59",
    "sex": "female",
    "care_setting": "community_hospital"
 }

 /** 
 * GET /treatment-pathways
 *
 * Purpose: 
 *   Return a commonly used treatment pathway
 *   for a given cancer condition. 
 *
 * Ethical Boundary: 
 *    A pathway is a description
 *    A pathway is not a perscription
 *    
 *    A pathway is left to the user with ethical guardrails
 */

 {
    "condition_category": "colorectal_cancer", 
    "pathways": [
        "id": "surgery_only", 
        "description": "Primary surgical intervention, chemo under review"
        "typical_use_context": "Early-stage disease in select cases", 
        "known_tradeoffs": [
            "Lower treatmet burden",
            "Potential under-treatment risk"
        ]
    ]
 }

 /**
 * GET /outcomes/summary
 *
 * Purpose:
 *   Provides aggregated outcome distributions
 *   for educational comparison.
 *
 *    Includes ranges, not estimates
 *    Confidence labels
 *    Bias surfaced with data
 *    A very "adult" way to handle this
 *
 * Ethical Boundary:
 *   This endpoint must never return
 *   individualized outcome predictions.
 */

{
    "pathway_id": "surgery_only",
    "outcomes": {
        "overall_survival_5yr": {
          "range": "65-75%", 
          "confidence": "moderate"
        }, 
        "recurrence_rate": {
            "range": "20-30%",
            "confidence": "low"
        }
    }, 
    "known_biases": [
        "Selection bias towards healthier patients", 
        "Underrepresentation of rural care settings"
    ], 
    "data_notes": "Outcomes vary significantly by stage and comorbidity."
}

/** 
* GET /physicians/{id}/profile
* 
* Purpose: 
* Not about ratings, rankings, or satisfaction scores
*
* Transparency without Yelp
*
* non-comparitive professional context
*
*/

{
    "training_background": "Academic medical center",
    "specialization_focus": "Gastrointestinal oncology",
    "case_volume_band": "High",
    "guideline_participation": true
}

/**
* Founder-Only System Health Metrics
*
* Purpose: Monitors system usage and safety
*
*/

{
    "active_cases_7d": 58, 
    "most_viewed_pathway": "surgery_plus_chemo",
    "safety_prompts_triggered": 20
}

