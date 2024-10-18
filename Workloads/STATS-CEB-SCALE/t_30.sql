SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.Score<=48
AND p.AnswerCount<=8
AND v.CreationDate<=1537
AND b.Date>=195
AND b.Date<=1533
AND u.CreationDate>=147

AND u.Id = v.UserId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;