SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation>=1
AND u.Reputation<=487
AND u.UpVotes<=27
AND u.CreationDate>=122
AND u.CreationDate<=1541

AND u.Id = c.UserId
AND c.UserId = ph.UserId;