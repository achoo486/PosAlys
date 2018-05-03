function limb_lengths = get_limb_lengths(pred_p)
    headtop_to_neck = norm( pred_p( :, 1 ) - pred_p( :, 2 ) );
    head_to_neck = norm( pred_p( :, 17 ) - pred_p( :, 2 ) );
    neck_to_right_shoulder = norm( pred_p( :, 2 ) - pred_p( :, 3 ) );
    neck_to_left_shoulder = norm( pred_p( :, 2 ) - pred_p( :, 6 ) );
    right_shoulder_to_right_elbow = norm( pred_p( :, 3 ) - pred_p( :, 4 ) );
    left_shoulder_to_left_elbow = norm( pred_p( :, 6 ) - pred_p( :, 7 ) );
    right_elbow_to_right_wrist = norm( pred_p( :, 4 ) - pred_p( :, 5 ) );
    left_elbow_to_left_wrist = norm( pred_p( :, 7 ) - pred_p( :, 8 ) );
    right_wrist_to_right_hand = norm( pred_p( :, 5 ) - pred_p( :, 18 ) );
    left_wrist_to_left_hand = norm( pred_p( :, 8 ) - pred_p( :, 19 ) );
    neck_to_spine = norm( pred_p( :, 2 ) - pred_p( :, 16 ) );
    spine_to_pelvis = norm( pred_p( :, 16 ) - pred_p( :, 15 ) );
    pelvis_to_right_hip = norm( pred_p( :, 15 ) - pred_p( :, 9 ) );
    pelvis_to_left_hip = norm( pred_p( :, 15 ) - pred_p( :, 12 ) );
    right_hip_to_right_knee = norm( pred_p( :, 9 ) - pred_p( :, 10 ) );
    left_hip_to_left_knee = norm( pred_p( :, 12 ) - pred_p( :, 13 ) );
    right_knee_right_ankle = norm( pred_p( :, 10 ) - pred_p( :, 11 ) );
    left_knee_left_ankle = norm( pred_p( :, 13 ) - pred_p( :, 14 ) );
    right_ankle_to_right_foot = norm( pred_p( :, 11 ) - pred_p( :, 20 ) );
    left_ankle_to_left_foot = norm( pred_p( :, 14 ) - pred_p( :, 21 ) );
    
    limb_lengths = [headtop_to_neck, ...
                   head_to_neck, ...
                   neck_to_right_shoulder, ...
                   neck_to_left_shoulder, ...
                   right_shoulder_to_right_elbow, ...
                   left_shoulder_to_left_elbow, ...
                   right_elbow_to_right_wrist, ...
                   left_elbow_to_left_wrist, ...
                   right_wrist_to_right_hand, ...
                   left_wrist_to_left_hand, ...
                   neck_to_spine, ...
                   spine_to_pelvis, ...
                   pelvis_to_right_hip, ...
                   pelvis_to_left_hip, ...
                   right_hip_to_right_knee, ...
                   left_hip_to_left_knee, ...
                   right_knee_right_ankle, ...
                   left_knee_left_ankle, ...
                   right_ankle_to_right_foot, ...
                   left_ankle_to_left_foot];
end