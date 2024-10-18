SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 0
AND ph.PostHistoryTypeId = 33
AND u.Reputation >= 122
AND u.Reputation <= 830
AND u.DownVotes <= 17
AND c.CreationDate >= 618
AND ph.CreationDate >= 86
AND u.CreationDate >= 316
AND u.CreationDate <= 635

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;